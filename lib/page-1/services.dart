import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
