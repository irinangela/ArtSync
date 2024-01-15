import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models.dart';

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
    // You can save additional user information to Firestore or your database here
  } catch (error) {
    if (error is FirebaseAuthException) {
      // Handle specific FirebaseAuthException error codes
      print("Firebase Auth Error: ${error.code}, ${error.message}");
      // You can display error messages to the user or handle them as needed
    } else {
      // Handle other exceptions
      print("Error: $error");
    }
  }
  return null;
}

Future<List<Map<String, String>>> getGroupChallengesForUser(
    UserData userData) async {
  List<Map<String, String>> challenges = [];
  var user = userData.currentUser?.username;

  // Step 1: Retrieve the list of group_id from the user's document
  QuerySnapshot<Map<String, dynamic>> userQuerySnapshot =
      await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: user)
          .get();

  if (userQuerySnapshot.docs.isNotEmpty) {
    DocumentSnapshot<Map<String, dynamic>> userDoc = userQuerySnapshot.docs[0];

    List<dynamic> userGroups = userDoc['groupID'];

    // Step 2 and 3: Fetch challenge details for each group
    for (var groupId in userGroups) {
      DocumentSnapshot<Map<String, dynamic>> groupDoc = await FirebaseFirestore
          .instance
          .collection('Groups')
          .doc(groupId.toString())
          .get();

      String groupName = groupDoc['Name'];
      String duration = groupDoc['Duration'].toString();

      String challengeId = groupDoc['ChallengeID'].toString();

      if (challengeId != '0') {
        DocumentSnapshot<Map<String, dynamic>> challengeDoc =
            await FirebaseFirestore.instance
                .collection('Challenges')
                .doc(challengeId)
                .get();

        String title = challengeDoc['Title'];
        String description = challengeDoc['Description'];

        challenges.add({
          'groupId': groupId.toString(), // Add groupId to the result
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

  // Step 1: Retrieve the private challenge ID and duration from the user's document
  QuerySnapshot<Map<String, dynamic>> userQuerySnapshot =
      await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: user)
          .get();

  if (userQuerySnapshot.docs.isNotEmpty) {
    DocumentSnapshot<Map<String, dynamic>> userDoc = userQuerySnapshot.docs[0];

    String privateChallengeId = userDoc['PrivateChallengeID'].toString();
    String duration = userDoc['ChallengeDuration'].toString();

    // Step 2: Fetch private challenge details for the ID
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

  // Return an empty map if the user's document is empty
  return {};
}

Future<List<Map<String, String>>> getGroupMembers(String groupId) async {
  try {
    // Fetch the Participants array from the Groups collection
    DocumentSnapshot groupSnapshot = await FirebaseFirestore.instance
        .collection('Groups')
        .doc(groupId)
        .get();

    // Get the list of usernames from the Participants array
    List<String> usernames = List<String>.from(groupSnapshot['Participants']);

    // Fetch the avatars for each username from the Users collection
    List<Map<String, String>> memberList = [];
    for (String username in usernames) {
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get()
          .then((QuerySnapshot querySnapshot) => querySnapshot.docs.first);

      // Add the username and avatar to the list
      memberList.add({
        'username': username,
        'avatar': userSnapshot['avatar'],
      });
    }

    // Print the result in the terminal
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

        // Convert types to String if they are not already
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
    // Check if the photoURL is not equal to '0' (as a String)
    if (submission['photo'] != '0') {
      // Assuming 'username' is a key in the submission map
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
    // Reference to the document in the "Groups" collection
    DocumentReference groupDocRef =
        FirebaseFirestore.instance.collection('Groups').doc(groupId);

    // Fetch the current data in the document
    DocumentSnapshot groupDoc = await groupDocRef.get();
    Map<String, dynamic> groupData = groupDoc.data() as Map<String, dynamic>;

    // Fetch the "Submissions" data (could be a List or a Map)
    dynamic submissionsData = groupData['Submissions'];

    // Check if the username exists in the data
    if (submissionsData is Map && submissionsData.containsKey(username)) {
      // Update the "photoURL" field for the specified username
      submissionsData[username]['PhotoURL'] = photoURL;

      // Update the document in the "Groups" collection
      await groupDocRef.update({'Submissions': submissionsData});

      // Update the local list
      for (var user in localList) {
        if (user['username'] == username) {
          user['photo'] =
              photoURL; // Assuming 'photo' is the key for photoURL in local list
          break;
        }
      }

      // Show a pop-up message indicating successful submission
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
    // Reference to the document in the "Groups" collection
    DocumentReference groupDocRef =
        FirebaseFirestore.instance.collection('Groups').doc(groupId);

    // Fetch the current data in the document
    DocumentSnapshot groupDoc = await groupDocRef.get();
    Map<String, dynamic> groupData = groupDoc.data() as Map<String, dynamic>;

    // Fetch the "Submissions" map
    Map<String, dynamic> submissionsMap = groupData['Submissions'];

    // Check if the username exists in the map
    if (submissionsMap.containsKey(username)) {
      // Increment the "Rating" field for the specified username
      submissionsMap[username]['Rating'] =
          (submissionsMap[username]['Rating'] ?? 0) + 1;

      // Update the document in the "Groups" collection
      await groupDocRef.update({'Submissions': submissionsMap});

      // Update the rating in the local submissions list
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

Future<List<Map<String, dynamic>>> findAllGroupInfo(String username) async {
  List<Map<String, dynamic>> groupInfoList = [];

  try {
    // Fetch the user document from the Users collection
    DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: username)
        .limit(1)
        .get()
        .then((QuerySnapshot querySnapshot) => querySnapshot.docs.first);

    // Check if the user document exists
    if (userSnapshot.exists) {
      List<dynamic> groupIDs = userSnapshot['groupID'];

      // Fetch group information for each groupID
      for (var groupId in groupIDs) {
        DocumentSnapshot groupDoc = await FirebaseFirestore.instance
            .collection('Groups')
            .doc(groupId.toString())
            .get();

        String groupName = groupDoc['Name'];

        // Fetch group members using existing getGroupMembers function
        List<Map<String, String>> members =
            await getGroupMembers(groupId.toString());

        // Add group information to the list
        groupInfoList.add({
          'groupid': groupId.toString(),
          'groupname': groupName,
          'members': members,
        });
      }

      // Print the result
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
    // Access the Users collection to find the document with the given username
    QuerySnapshot userQuery = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: username)
        .get();

    if (userQuery.docs.isNotEmpty) {
      // Get the groupIDs from the matched document
      List<dynamic> groupIDs = userQuery.docs.first['groupID'];

      // Access the Groups collection to get the group details
      for (var groupID in groupIDs) {
        if (groupID is String) {
          // groupID is already a string
          DocumentSnapshot groupDoc = await FirebaseFirestore.instance
              .collection('Groups')
              .doc(groupID)
              .get();

          if (groupDoc.exists) {
            // Add group details to the list
            groupsList.add({
              'groupid': groupID,
              'groupname': groupDoc['Name'],
              'challengeid': groupDoc['ChallengeID'], // Include ChallengeID
            });
          }
        } else if (groupID is int) {
          // Convert groupID to string if it's an integer
          String groupIDString = groupID.toString();

          DocumentSnapshot groupDoc = await FirebaseFirestore.instance
              .collection('Groups')
              .doc(groupIDString)
              .get();

          if (groupDoc.exists) {
            // Add group details to the list
            groupsList.add({
              'groupid': groupIDString,
              'groupname': groupDoc['Name'],
              'challengeid': groupDoc['ChallengeID'], // Include ChallengeID
            });
          }
        }
      }
    }
  } catch (e) {
    print('Error getting groups: $e');
    // Handle errors as needed
  }

  return groupsList;
}

bool doesGroupExist(List<String> selectedUsers,
    List<List<Map<String, String>>> allGroupMembers) {
  for (List<Map<String, String>> groupMembers in allGroupMembers) {
    // Extract usernames from the current groupMembers list
    List<String> usernamesInGroup =
        groupMembers.map((member) => member['username']!).toList();

    // Check if selectedUsers is the same as usernamesInGroup
    if (selectedUsers.toSet().difference(usernamesInGroup.toSet()).isEmpty &&
        usernamesInGroup.toSet().difference(selectedUsers.toSet()).isEmpty) {
      // Return true if there is a match
      return true;
    }
  }

  // Return false if no match is found
  return false;
}

Future<void> createGroupInFirestore(
    List<String> selectedUsers, String groupname) async {
  try {
    // Create a new document in the 'Groups' collection
    DocumentReference groupRef =
        FirebaseFirestore.instance.collection('Groups').doc();

    // Set the fields of the new document
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
          'photoURL': '0',
          'Rating': 0,
        },
      ),
    });

    print('Group created successfully in Firestore!');

    // Get the ID of the newly created group document
    String groupId = groupRef.id;

    // Update the 'Users' collection for each selected user
    for (String username in selectedUsers) {
      // Retrieve the document ID for the user with the given username
      QuerySnapshot userQuery = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get();

      if (userQuery.docs.isNotEmpty) {
        String userId = userQuery.docs.first.id;

        // Update the 'groupID' array field in the 'Users' collection with the group ID
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
    // Handle errors as needed
  }
}

Future<void> deleteGroupAndReferences(
    String groupid, List<Map<String, String>> userList) async {
  try {
    // Delete the document from the 'Groups' collection
    await FirebaseFirestore.instance.collection('Groups').doc(groupid).delete();

    print('Group document deleted successfully from Firestore!');

    // Remove the groupid from the 'groupID' field in the 'Users' collection
    for (Map<String, String> user in userList) {
      String username = user['username']!;

      // Retrieve the document ID for the user with the given username
      QuerySnapshot userQuery = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get();

      if (userQuery.docs.isNotEmpty) {
        String userId = userQuery.docs.first.id;

        // Update the 'groupID' array field in the 'Users' collection by removing the groupid
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

Future<void> updateNotificationField(String username, String groupName) async {
  try {
    // Reference to the Users collection
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    // Query the documents with the specified username
    QuerySnapshot querySnapshot =
        await users.where('username', isEqualTo: username).get();

    // Check if any documents match the query
    if (querySnapshot.docs.isNotEmpty) {
      // Get the first document (assuming there is only one user with the given username)
      DocumentSnapshot userDoc = querySnapshot.docs.first;

      // Update the Notification.notify and groupname fields in the document
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
    // Reference to the Firestore collection
    CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('Users');

    // Query for the user with the provided username
    QuerySnapshot querySnapshot =
        await usersCollection.where('username', isEqualTo: username).get();

    // Check if the user with the given username exists
    if (querySnapshot.docs.isNotEmpty) {
      // Get the first document (assuming there is only one user with a given username)
      var userDocument =
          querySnapshot.docs.first.data() as Map<String, dynamic>;

      // Check if Notifications is not null and notify is equal to 1
      if (userDocument['Notifications'] != null &&
          userDocument['Notifications']['notify'] == 1) {
        // Get the 'groupname' field
        String? groupName = userDocument['Notifications']['groupname'];

        // Update Firestore: Set notify to 0 and groupname to '0'
        await usersCollection.doc(querySnapshot.docs.first.id).update({
          'Notifications.notify': 0,
          'Notifications.groupname': '0',
        });

        return groupName;
      } else {
        // If notify is 0, return 'empty'
        return 'empty';
      }
    }

    // User not found
    return null;
  } catch (e) {
    print('Error getting groupname and resetting notification: $e');
    return null;
  }
}

Future<void> skipChallenge(String username, String groupname) async {
  try {
    // Reference to the Firestore collection
    CollectionReference groupsCollection =
        FirebaseFirestore.instance.collection('Groups');

    // Query for the group with the provided groupname
    QuerySnapshot querySnapshot =
        await groupsCollection.where('Name', isEqualTo: groupname).get();

    // Check if the group with the given groupname exists
    if (querySnapshot.docs.isNotEmpty) {
      // Get the first document (assuming there is only one group with the given groupname)
      var groupDocument = querySnapshot.docs.first;

      // Check if the 'Submissions' field exists in the document
      if (groupDocument['Submissions'] != null) {
        // Get the existing 'Submissions' map
        Map<String, dynamic> submissionsMap =
            groupDocument['Submissions'] as Map<String, dynamic>;

        // Update the 'photoURL' and 'Rating' fields for the specified username
        submissionsMap[username] = {'PhotoURL': '2', 'Rating': 0};

        // Update the document in the 'Groups' collection
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
