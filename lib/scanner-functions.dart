import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/scanner-page.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


class AddFriend {
  final BuildContext context;

  AddFriend(this.context);

  Future<void> addFriendFromQRCode(QRViewController controller, Barcode scanData) async {
  String? scannedUsername = scanData.code;

  if (scannedUsername != null) {
    try {
      var currentUserDoc = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: UserData().currentUser?.username)
          .get();

      if (currentUserDoc.docs.isNotEmpty) {
        var currentUserDocRef = currentUserDoc.docs.first.reference;

        var currentFriends = List<String>.from(currentUserDoc.docs.first['Friends'] ?? []);

        if (!currentFriends.contains(scannedUsername)) {
          currentFriends.add(scannedUsername);

          await currentUserDocRef.update({'Friends': currentFriends});

          await updateFriendListInFirestore(scannedUsername, UserData().currentUser!.username);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('User $scannedUsername added to your friend list'),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('User $scannedUsername is already in your friend list'),
            ),
          );
        }
      } else {
        print('Current user document not found in Firestore');
      }
    } catch (e) {
      print('Error updating friend list in Firestore: $e');
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('User not found in the database'),
      ),
    );
  }

  controller.resumeCamera();
}

Future<void> updateFriendListInFirestore(String currentUser, String friendUsername) async {
  try {
    var currentUserDoc = await FirebaseFirestore.instance
        .collection('Users')
        .where('username', isEqualTo: currentUser)
        .get();

    if (currentUserDoc.docs.isNotEmpty) {
      var currentUserDocRef = currentUserDoc.docs.first.reference;

      await currentUserDocRef.update({
        'Friends': FieldValue.arrayUnion([friendUsername]),
      });
    } else {
      print('Current user document not found in Firestore');
    }
  } catch (e) {
    print('Error updating friend list in Firestore: $e');
  }
}

}

class JoinGroup {
  final BuildContext context;

  JoinGroup(this.context);

  Future<void> joinGroupFromQRCode(String groupID) async {
    try {
      var currentUserDoc = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: UserData().currentUser?.username)
          .get();

      if (currentUserDoc.docs.isNotEmpty) {
        var currentUserDocRef = currentUserDoc.docs.first.reference;

        var currentUserGroups = List<String>.from(currentUserDoc.docs.first['groupID'] ?? []);

        if (!currentUserGroups.contains(groupID)) {
          currentUserGroups.add(groupID);

          await currentUserDocRef.update({'groupID': currentUserGroups});

          var groupDoc = await FirebaseFirestore.instance.collection('Groups').doc(groupID).get();

          if (groupDoc.exists) {
            var currentParticipants = List<String>.from(groupDoc['Participants'] ?? []);

            currentParticipants.add(UserData().currentUser!.username);

            await FirebaseFirestore.instance.collection('Groups').doc(groupID).update({'Participants': currentParticipants});

            await initializeSubmissionsForUserInGroup(groupID, UserData().currentUser!.username);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Successfully joined the group'),
              ),
            );
          } else {
            print('Group document not found in Firestore');
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('You are already a participant in this group'),
            ),
          );
        }
      } else {
        print('Current user document not found in Firestore');
      }
    } catch (e) {
      print('Error joining group and updating Firestore: $e');
    }
  }

  Future<void> initializeSubmissionsForUserInGroup(String groupID, String username) async {
    try {
      DocumentSnapshot groupDoc = await FirebaseFirestore.instance
          .collection('Groups')
          .doc(groupID)
          .get();

      if (groupDoc.exists) {
        Map<String, dynamic> submissionsMap = groupDoc['Submissions'] ?? {};
        submissionsMap[username] = {'Rating': 0, 'PhotoURL': '0'};

        // Update the document with the modified submissionsMap
        await FirebaseFirestore.instance.collection('Groups').doc(groupID).update({'Submissions': submissionsMap});
      } else {
        print('Group document not found in Firestore');
      }
    } catch (error) {
      print('Error initializing submissions for user in group: $error');
    }
  }
}