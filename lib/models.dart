import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserInfoModel {
  String username;
  String email;
  String password;
  String QRcode;
  String avatar;
  int points;
  int ChallengeDuration;
  int PrivateChallengeID;

  UserInfoModel({
    required this.username,
    required this.email,
    required this.password,
    required this.QRcode,
    required this.avatar,
    required this.points,
    required this.ChallengeDuration,
    required this.PrivateChallengeID,
  });
}

class UserData extends ChangeNotifier {
  UserInfoModel? _currentUser;

  UserInfoModel? get currentUser => _currentUser;

  // Method to set the user information
  void setUser(UserInfoModel user) {
    _currentUser = user;
    notifyListeners();
  }

  // Method to clear the user information (e.g., during logout)
  void clearUser() {
    _currentUser = null;
    notifyListeners();
  }

  Future<void> updateUsernameInFirestore(
      UserData userData, String? newUsername) async {
    try {
      var user = userData.currentUser;

      //print('In UpdateUsernameFunction');
      //print('Current User: $user');
      //print('New Username: $newUsername');

      if (user != null) {
        //print('User is not null');
      } else {
        //print('User is null');
        return; // Return early if the user is null
      }

      if (newUsername != null && newUsername.isNotEmpty) {
        //print('New Username is not null or empty');
      } else {
        //print('New Username is null or empty');
        return; // Return early if the newUsername is null or empty
      }

      // Fetch user document based on the 'username' field
      var querySnapshot = await FirebaseFirestore.instance
          .collection('Users')
          .where('username',
              isEqualTo: user.username) // Change to 'newUsername' if needed
          .get();

      // Check if the document exists
      if (querySnapshot.docs.isNotEmpty) {
        var userDocRef = querySnapshot.docs.first.reference;

        // Perform the update
        await userDocRef.update({
          'username': newUsername,
        });

        // If the update is successful, update the local state
        user.username = newUsername;
        notifyListeners();
        print('Username Updated Successfully');
      } else {
        print('User Document not found in Firestore');
      }

      print('Out UpdateUsernameFunction');
    } catch (e) {
      print('Error updating username in Firestore: $e');
    }
  }

  void updateChallengeDuration(int duration) {
    //print('Hooray! Changes saved 55.');
    if (_currentUser != null) {
      try {
        //updateChallengeDurationInFirestore(duration);
        _currentUser!.ChallengeDuration = duration;
        //print('Notify Listeners before');
        notifyListeners();
        //print('Notify Listeners after');
      } catch (e) {
        print('Error in updateChallengeDuration: $e');
      }
    }
    //print('Hooray! Changes saved 66.');
  }

  Future<void> updateChallengeDurationInFirestore(
      UserData userData, int duration) async {
    var user = userData.currentUser?.username;

    print(user);
    if (user != null) {
      try {
        await FirebaseFirestore.instance
            .collection('Users')
            .where('username', isEqualTo: user)
            .get()
            .then((querySnapshot) {
          if (querySnapshot.size == 1) {
            var documentSnapshot = querySnapshot.docs.first;
            documentSnapshot.reference.update({
              'ChallengeDuration': duration,
            });
            // If the update is successful, also update the local state
            userData.updateChallengeDuration(duration);
          } else {
            print('User not found in Firestore');
          }
        });
      } catch (e) {
        print('Error updating ChallengeDuration in Firestore: $e');
      }
    }
  }

  Future<void> updateAvatarInFirestore(
      UserData userData, String avatarPath) async {
    var user = userData.currentUser?.username;

    //print(user);
    if (user != null) {
      try {
        if (avatarPath.isNotEmpty) {
          await FirebaseFirestore.instance
              .collection('Users')
              .where('username', isEqualTo: user)
              .get()
              .then((querySnapshot) {
            if (querySnapshot.size == 1) {
              var documentSnapshot = querySnapshot.docs.first;
              documentSnapshot.reference.update({
                'avatar': avatarPath,
              });
              //print('Hooray! Changes saved (updateAvatarInFirestore) 3.');
              // If the update is successful, also update the local state
              userData.updateAvatar(avatarPath);
            } else {
              print('User not found in Firestore');
            }
          });
        }
      } catch (e) {
        print('Error updating avatar in Firestore: $e');
      }
    }
  }

  // Method to update the local state with the new avatar path
  void updateAvatar(String avatarPath) {
    if (_currentUser != null) {
      try {
        _currentUser!.avatar = avatarPath;
        print('Notify Listeners before (updateAvatar)');
        notifyListeners();
        print('Notify Listeners after (updateAvatar)');
      } catch (e) {
        print('Error in updateAvatar: $e');
      }
    }
  }
}
