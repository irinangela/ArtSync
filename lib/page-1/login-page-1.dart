// ignore: file_names
import 'package:flutter/material.dart';
import 'package:myapp/page-1/login-page-2.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  bool isDraggingUp = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! < -10) {
            setState(() {
              isDraggingUp = true;
            });
          }
        },
        onVerticalDragEnd: (details) {
          if (isDraggingUp) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage2()),
            );
            setState(() {
              isDraggingUp = false;
            });
          }
        },
        child: SizedBox(
        width: 430,
        height: 932,
        child: Stack(
          children: [
            Image.asset(
              "assets/page-1/images/pexels-photo-6952421-2-bg.png",
              width: screenWidth,
              height: 932,
              fit: BoxFit.fill,
            ),
            Container(
              width: screenWidth,
              height: 932,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [
                    Color(0xFFA75FE3),
                    Color(0x99A75FE3),
                    Color(0xFFA75FE3),
                  ],
                ),
              ),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 36.0, top: 380.0 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Art block?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        'Swipe up to forget\nabout it.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontFamily: 'Inter',
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 790,
                child: SlidingWindow(),
            ),
            Positioned ( 
                top: 720,
                left: MediaQuery.of(context).size.width / 2 - 15,
                child: Image.asset(
                  "assets/page-1/images/vector-a3b.png",
                  width: 30,
                  height: 30,
                ),
              ),
          ],
         
        ),
      )
    )
    );
  }
}

  class SlidingWindow extends StatelessWidget {
    const SlidingWindow({super.key});

    @override
    Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
      return SizedBox(
        width: 430,
        height: 598,
        child: Stack(
            children: [
                Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                        width: screenWidth,
                        height: 598,
                        decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                ),
                            ),
                        ),
                    ),
                ),
              ],
        ),
    );
  }
}