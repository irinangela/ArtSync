import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models.dart';

//login-page2 functions
Future<User?> createUserWithEmailAndPassword(
    String email, String password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // User successfully created
    User? user = userCredential.user;
    print("User created: ${user?.uid}");
    return user;
  } catch (error) {
    if (error is FirebaseAuthException) {
      print("Firebase Auth Error: ${error.code}, ${error.message}");
    } else {
      print("Error: $error");
    }
  }
  return null;
}

//homepage functions
Future<List<Map<String, String>>> getGroupChallengesForUser(
    UserData userData) async {
  List<Map<String, String>> challenges = [];
  var user = userData.currentUser?.username;

  QuerySnapshot<Map<String, dynamic>> userQuerySnapshot =
      await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: user)
          .get();

  if (userQuerySnapshot.docs.isNotEmpty) {
    DocumentSnapshot<Map<String, dynamic>> userDoc = userQuerySnapshot.docs[0];

    List<dynamic> userGroups = userDoc['groupID'];

    for (var groupId in userGroups) {
      DocumentSnapshot<Map<String, dynamic>> groupDoc = await FirebaseFirestore
          .instance
          .collection('Groups')
          .doc(groupId.toString())
          .get();

      String groupName = groupDoc['Name'];
      String duration = groupDoc['Duration'].toString();

      String challengeId = groupDoc['ChallengeID'].toString();

      //showing if only there are any challenges on any group
      if (challengeId != '0') {
        DocumentSnapshot<Map<String, dynamic>> challengeDoc =
            await FirebaseFirestore.instance
                .collection('Challenges')
                .doc(challengeId)
                .get();

        String title = challengeDoc['Title'];
        String description = challengeDoc['Description'];

        challenges.add({
          'groupId': groupId.toString(),
          'groupName': groupName,
          'duration': duration,
          'title': title,
          'description': description
        });
      }
    }
  }

  return challenges;
}

Future<Map<String, String>> getPrivateChallengeForUser(
    UserData userData) async {
  var user = userData.currentUser?.username;

  QuerySnapshot<Map<String, dynamic>> userQuerySnapshot =
      await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: user)
          .get();

  if (userQuerySnapshot.docs.isNotEmpty) {
    DocumentSnapshot<Map<String, dynamic>> userDoc = userQuerySnapshot.docs[0];

    String privateChallengeId = userDoc['PrivateChallengeID'].toString();
    String duration = userDoc['ChallengeDuration'].toString();

    DocumentSnapshot<Map<String, dynamic>> challengeDoc =
        await FirebaseFirestore.instance
            .collection('Challenges')
            .doc(privateChallengeId)
            .get();

    String title = challengeDoc['Title'].toString();
    String description = challengeDoc['Description'].toString();

    return {
      'title': title,
      'description': description,
      'duration': duration,
    };
  }
  return {};
}

Future<List<Map<String, String>>> getGroupMembers(String groupId) async {
  try {
    DocumentSnapshot groupSnapshot = await FirebaseFirestore.instance
        .collection('Groups')
        .doc(groupId)
        .get();

    List<String> usernames = List<String>.from(groupSnapshot['Participants']);

    List<Map<String, String>> memberList = [];
    for (String username in usernames) {
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get()
          .then((QuerySnapshot querySnapshot) => querySnapshot.docs.first);

      memberList.add({
        'username': username,
        'avatar': userSnapshot['avatar'],
      });
    }

    print("Group Members and Avatars:");
    memberList.forEach((member) {
      print("${member['username']}: ${member['avatar']}");
    });

    return memberList;
  } catch (e) {
    print("Error fetching group members: $e");
    return [];
  }
}

//groupchallenge page functions
Future<List<Map<String, dynamic>>> getSubmissions(String groupId) async {
  List<Map<String, dynamic>> submissionsList = [];

  try {
    DocumentSnapshot groupDoc = await FirebaseFirestore.instance
        .collection('Groups')
        .doc(groupId)
        .get();

    Map<String, dynamic> groupData = groupDoc.data() as Map<String, dynamic>;

    if (groupData.containsKey('Submissions')) {
      Map<String, dynamic> submissionsMap = groupData['Submissions'];

      submissionsMap.forEach((username, submissionData) {
        dynamic photoURL = submissionData['PhotoURL'] ?? '';
        dynamic rating = submissionData['Rating'] ?? '';

        if (photoURL is! String) {
          photoURL = photoURL.toString();
        }

        if (rating is! String) {
          rating = rating;
        }

        submissionsList.add({
          'username': username,
          'photo': photoURL,
          'rating': rating,
        });
      });
    } else {
      print(
          'Submissions field not found in the document with groupId: $groupId');
    }
  } catch (error) {
    print('Error fetching submissions: $error');
  }

  return submissionsList;
}

List<String> readyToSubmit(List<Map<String, dynamic>> submissionsList) {
  List<String> usersReadyToSubmit = [];

  for (var submission in submissionsList) {
    if (submission['photo'] != '0') {
      usersReadyToSubmit.add(submission['username']);
    }
    print(usersReadyToSubmit);
  }

  return usersReadyToSubmit;
}

List<Map<String, dynamic>> removeUserFromList(
    List<Map<String, dynamic>> userList, String? usernameToRemove) {
  List<Map<String, dynamic>> updatedList = List.from(userList);
  updatedList.removeWhere((user) => user['username'] == usernameToRemove);
  return updatedList;
}

void submitData(
  BuildContext context,
  String groupId,
  String username,
  String photoURL,
  List<Map<String, dynamic>> localList,
) async {
  try {
    DocumentReference groupDocRef =
        FirebaseFirestore.instance.collection('Groups').doc(groupId);

    DocumentSnapshot groupDoc = await groupDocRef.get();
    Map<String, dynamic> groupData = groupDoc.data() as Map<String, dynamic>;

    dynamic submissionsData = groupData['Submissions'];

    if (submissionsData is Map && submissionsData.containsKey(username)) {
      submissionsData[username]['PhotoURL'] = photoURL;
      await groupDocRef.update({'Submissions': submissionsData});
      for (var user in localList) {
        if (user['username'] == username) {
          user['photo'] = photoURL;
          break;
        }
      }

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Photo Submitted Successfully'),
            content: const Text('Your photo has been submitted successfully!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      print('Username not found in Submissions data.');
    }
  } catch (error) {
    print('Error updating Firestore: $error');
  }
}

Future<void> increaseRating(
    String groupId,
    String username,
    List<Map<String, dynamic>> submissions,
    int selectedImageIndex,
    BuildContext context) async {
  try {
    DocumentReference groupDocRef =
        FirebaseFirestore.instance.collection('Groups').doc(groupId);

    DocumentSnapshot groupDoc = await groupDocRef.get();
    Map<String, dynamic> groupData = groupDoc.data() as Map<String, dynamic>;

    Map<String, dynamic> submissionsMap = groupData['Submissions'];

    if (submissionsMap.containsKey(username)) {
      submissionsMap[username]['Rating'] =
          (submissionsMap[username]['Rating'] ?? 0) + 1;

      await groupDocRef.update({'Submissions': submissionsMap});

      if (selectedImageIndex != -1) {
        submissions[selectedImageIndex]['rating'] =
            (submissions[selectedImageIndex]['rating'] ?? 0) + 1;
      }
    } else {
      print('Username not found in Submissions map.');
    }
  } catch (error) {
    print('Error updating Firestore: $error');
  }
}

//profile page functions
Future<List<Map<String, dynamic>>> findAllGroupInfo(String username) async {
  List<Map<String, dynamic>> groupInfoList = [];

  try {
    DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: username)
        .limit(1)
        .get()
        .then((QuerySnapshot querySnapshot) => querySnapshot.docs.first);

    if (userSnapshot.exists) {
      List<dynamic> groupIDs = userSnapshot['groupID'];

      for (var groupId in groupIDs) {
        DocumentSnapshot groupDoc = await FirebaseFirestore.instance
            .collection('Groups')
            .doc(groupId.toString())
            .get();

        String groupName = groupDoc['Name'];

        List<Map<String, String>> members =
            await getGroupMembers(groupId.toString());

        groupInfoList.add({
          'groupid': groupId.toString(),
          'groupname': groupName,
          'members': members,
        });
      }

      print('Group Information for $username:');
      groupInfoList.forEach((groupInfo) {
        print(
            'GroupID: ${groupInfo['groupid']}, GroupName: ${groupInfo['groupname']}');
        print('Members:');
        groupInfo['members'].forEach((member) {
          print('${member['username']}, Avatar: ${member['avatar']}');
        });
        print('--------------');
      });
    } else {
      print('User not found with username: $username');
    }
  } catch (error) {
    print('Error fetching group information: $error');
  }

  return groupInfoList;
}

Future<List<Map<String, dynamic>>> getGroupsByUsername(String username) async {
  List<Map<String, dynamic>> groupsList = [];

  try {
    QuerySnapshot userQuery = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: username)
        .get();

    if (userQuery.docs.isNotEmpty) {
      List<dynamic> groupIDs = userQuery.docs.first['groupID'];

      for (var groupID in groupIDs) {
        if (groupID is String) {
          DocumentSnapshot groupDoc = await FirebaseFirestore.instance
              .collection('Groups')
              .doc(groupID)
              .get();

          if (groupDoc.exists) {
            groupsList.add({
              'groupid': groupID,
              'groupname': groupDoc['Name'],
              'challengeid': groupDoc['ChallengeID'],
            });
          }
        } else if (groupID is int) {
          String groupIDString = groupID.toString();

          DocumentSnapshot groupDoc = await FirebaseFirestore.instance
              .collection('Groups')
              .doc(groupIDString)
              .get();

          if (groupDoc.exists) {
            groupsList.add({
              'groupid': groupIDString,
              'groupname': groupDoc['Name'],
              'challengeid': groupDoc['ChallengeID'],
            });
          }
        }
      }
    }
  } catch (e) {
    print('Error getting groups: $e');
  }

  return groupsList;
}

//create a group page functions
bool doesGroupExist(List<String> selectedUsers,
    List<List<Map<String, String>>> allGroupMembers) {
  for (List<Map<String, String>> groupMembers in allGroupMembers) {
    List<String> usernamesInGroup =
        groupMembers.map((member) => member['username']!).toList();

    if (selectedUsers.toSet().difference(usernamesInGroup.toSet()).isEmpty &&
        usernamesInGroup.toSet().difference(selectedUsers.toSet()).isEmpty) {
      return true;
    }
  }

  return false;
}

Future<void> createGroupInFirestore(
    List<String> selectedUsers, String groupname) async {
  try {
    DocumentReference groupRef =
        FirebaseFirestore.instance.collection('Groups').doc();

    await groupRef.set({
      'ChallengeID': '0',
      'Duration': 0,
      'Name': groupname,
      'Participants': selectedUsers,
      'QRcode': 'assets/page-1/images/QRcode.png',
      'Submissions': Map.fromIterable(
        selectedUsers,
        key: (username) => username,
        value: (_) => {
          'PhotoURL': '0',
          'Rating': 0,
        },
      ),
    });

    print('Group created successfully in Firestore!');

    String groupId = groupRef.id;

    for (String username in selectedUsers) {
      QuerySnapshot userQuery = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get();

      if (userQuery.docs.isNotEmpty) {
        String userId = userQuery.docs.first.id;

        await FirebaseFirestore.instance
            .collection('Users')
            .doc(userId)
            .update({
          'groupID': FieldValue.arrayUnion([groupId]),
        });
      }
    }

    print('Users collection updated successfully!');
  } catch (e) {
    print('Error creating group in Firestore: $e');
  }
}

//profile page
Future<void> deleteGroupAndReferences(
    String groupid, List<Map<String, String>> userList) async {
  try {
    await FirebaseFirestore.instance.collection('Groups').doc(groupid).delete();

    print('Group document deleted successfully from Firestore!');
    for (Map<String, String> user in userList) {
      String username = user['username']!;

      QuerySnapshot userQuery = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get();

      if (userQuery.docs.isNotEmpty) {
        String userId = userQuery.docs.first.id;

        await FirebaseFirestore.instance
            .collection('Users')
            .doc(userId)
            .update({
          'groupID': FieldValue.arrayRemove([groupid]),
        });
      }
    }

    print('Users collection updated successfully!');
  } catch (e) {
    print('Error deleting group document and references: $e');
    // Handle errors as needed
  }
}

//group challenge
Future<void> updateNotificationField(String username, String groupName) async {
  try {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    QuerySnapshot querySnapshot =
        await users.where('username', isEqualTo: username).get();

    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot userDoc = querySnapshot.docs.first;

      await users.doc(userDoc.id).update({
        'Notifications.notify': 1,
        'Notifications.groupname': groupName,
      });

      print('Fields updated successfully for user: $username');
    } else {
      print('User with username $username not found');
    }
  } catch (error) {
    print('Error updating fields: $error');
  }
}

Future<String?> getGroupNameAndResetNotification(String username) async {
  try {
    CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('Users');

    QuerySnapshot querySnapshot =
        await usersCollection.where('username', isEqualTo: username).get();

    if (querySnapshot.docs.isNotEmpty) {
      var userDocument =
          querySnapshot.docs.first.data() as Map<String, dynamic>;

      if (userDocument['Notifications'] != null &&
          userDocument['Notifications']['notify'] == 1) {
        String? groupName = userDocument['Notifications']['groupname'];

        await usersCollection.doc(querySnapshot.docs.first.id).update({
          'Notifications.notify': 0,
          'Notifications.groupname': '0',
        });

        return groupName;
      } else {
        return 'empty';
      }
    }

    return null;
  } catch (e) {
    print('Error getting groupname and resetting notification: $e');
    return null;
  }
}

//homepage
Future<void> skipChallenge(String username, String groupname) async {
  try {
    CollectionReference groupsCollection =
        FirebaseFirestore.instance.collection('Groups');

    QuerySnapshot querySnapshot =
        await groupsCollection.where('Name', isEqualTo: groupname).get();

    if (querySnapshot.docs.isNotEmpty) {
      var groupDocument = querySnapshot.docs.first;

      if (groupDocument['Submissions'] != null) {
        Map<String, dynamic> submissionsMap =
            groupDocument['Submissions'] as Map<String, dynamic>;

        submissionsMap[username] = {'PhotoURL': '2', 'Rating': 0};

        await groupsCollection.doc(groupDocument.id).update({
          'Submissions': submissionsMap,
        });

        print('Submissions updated successfully for user: $username');
      } else {
        print(
            'Submissions field not found in the document with groupname: $groupname');
      }
    } else {
      print('Group with groupname $groupname not found');
    }
  } catch (e) {
    print('Error updating submissions: $e');
  }
}

String getPhotoByUsername(
    List<Map<String, dynamic>> submissions, String username) {
  for (var submission in submissions) {
    if (submission['username'] == username) {
      return submission['photo'];
    }
  }
  return 'default_photo_url';
}

Future<int?> getUserPoints(String username) async {
  try {
    CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('Users');

    QuerySnapshot querySnapshot =
        await usersCollection.where('username', isEqualTo: username).get();

    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot userDoc = querySnapshot.docs.first;

      int? userPoints = userDoc['points'];

      return userPoints;
    } else {
      return null;
    }
  } catch (e) {
    print('Error fetching user points: $e');
    return null;
  }
}
