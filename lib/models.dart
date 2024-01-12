import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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

void updateChallengeDuration(int duration) {
  print('Hooray! Changes saved 55.');
  if (_currentUser != null) {
    try {
      //updateChallengeDurationInFirestore(duration);
      _currentUser!.ChallengeDuration = duration;
      print('Notify Listeners before');
      notifyListeners();
      print('Notify Listeners after');
    } catch (e) {
      print('Error in updateChallengeDuration: $e');
    }
  }
  print('Hooray! Changes saved 66.');
}


Future<void> updateChallengeDurationInFirestore(UserData userData, int duration) async {
  var user = userData.currentUser?.username;

  print(user);
  if (user != null) {
    print('Hooray! Changes saved 6.');
    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: user)
          .get()
          .then((querySnapshot) {
            print('Hooray! Changes saved 7.'); 
            if (querySnapshot.size == 1) {
              var documentSnapshot = querySnapshot.docs.first;
              documentSnapshot.reference.update({
                'ChallengeDuration': duration,
              });
              print('Hooray! Changes saved 8.');
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

}
