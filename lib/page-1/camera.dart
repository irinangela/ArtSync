import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController? _controller; // Make it nullable
  bool isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    try {
      final cameras = await availableCameras();
      _controller = CameraController(cameras[0], ResolutionPreset.max);
      await _controller!.initialize();
      if (mounted) {
        setState(() {
          isCameraInitialized = true;
        });
      }
    } on CameraException catch (e) {
      if (e.code == 'CameraAccessDenied') {
        // Handle access errors here.
      } else {
        // Handle other errors here.
      }
    }
  }

  @override
  void dispose() {
    _controller?.dispose(); // Dispose only if it's not null
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isCameraInitialized) {
      return Scaffold(
        body: CameraPreview(_controller!),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
