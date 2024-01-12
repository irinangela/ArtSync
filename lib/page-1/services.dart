import 'package:firebase_auth/firebase_auth.dart';

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

class ConnectedUser {
  String username;
  String password;
  String QRcode;
  String avatar;
  int points;
  int ChallengeDuration;
  int PrivateChallengeID;

  ConnectedUser({
    required this.username,
    required this.password,
    required this.QRcode,
    required this.avatar,
    required this.points,
    required this.ChallengeDuration,
    required this.PrivateChallengeID,
  });
}
