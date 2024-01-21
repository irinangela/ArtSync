import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController? _controller;
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
        // Handle camera access denied
      }
    }
  }

  Future<void> takePicture() async {
    try {
      final XFile picture = await _controller!.takePicture();
      // Do something with the picture (e.g., save it or display it)
      print('Picture saved to: ${picture.path}');
      Navigator.pop(context);
    } catch (e) {
      // Handle camera errors
      print('Error taking picture: $e');
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isCameraInitialized) {
      return Scaffold(
        backgroundColor: Colors.purple[200],
        body: Stack(
          children: [
            CameraPreview(_controller!),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: takePicture,
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(16),
                  ),
                  child: Icon(
                    Icons.camera,
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
