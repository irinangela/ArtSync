// ignore_for_file: file_names

import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/home-page.dart';
import 'package:myapp/scanner-functions.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRViewExample extends StatefulWidget {
  UserData userData;
  QRViewExample({Key? key, required this.userData}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  Future<void> updateFriends(String currentUser, String friendUsername) async {
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

      var currentUserDoc1 = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: friendUsername)
          .get();

      if (currentUserDoc1.docs.isNotEmpty) {
        var currentUserDocRef1 = currentUserDoc1.docs.first.reference;

        await currentUserDocRef1.update({
          'Friends': FieldValue.arrayUnion([currentUser]),
        });
      } else {
        print('Current user document not found in Firestore');
      }
    } catch (e) {
      print('Error updating friend list in Firestore: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 12, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: Text("Scan code to add a friend",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple)),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        result = scanData;
      });

      // Check if the result is not null
      if (result != null) {
        // Call updateFriends function with the scanned result
        await updateFriends(
            widget.userData.currentUser!.username, result!.code.toString());

        // Close the scanner after updating friends
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(userData: widget.userData)),
        );
      }
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
