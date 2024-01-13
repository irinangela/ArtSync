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
          rating = rating.toString();
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
