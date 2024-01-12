import 'package:flutter/material.dart';
import 'package:myapp/models.dart';

class PrivateChallenge extends StatefulWidget {
  final UserData userData;
  const PrivateChallenge({Key? key, required this.userData}) : super(key: key);
  static const String text = "goodbye";

  @override
  State<PrivateChallenge> createState() => _PrivateChallengeState();
}

class _PrivateChallengeState extends State<PrivateChallenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: 430,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/page-1/images/Background2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text.rich(
              textAlign: TextAlign.start,
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Your ',
                    style: TextStyle(
                        color: Color(0xFFA75FE3),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text: 'private',
                    style: TextStyle(
                      color: Color(0xFFA75FE3),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: ' challenge ',
                    style: TextStyle(
                      color: Color(0xFFA75FE3),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Private challenge Title',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 10),
            const Text("+30 pnts",
                style: TextStyle(
                    color: Color(0xFFA75FE3),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    decoration: TextDecoration.none)),
            const Text(
              "--------------------------------------------------",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: const Color(0x30E5D4FF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD0A2F7)),
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x4CF1EAFF),
                    blurRadius: 5,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Here will be the description of the private challenge',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                print("camera is open now");
              }, //open camera
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/page-1/images/CameraButton.png',
                    height: 80, width: 80),
              ),
            ),
            //large sizedbox here so that we x=can have the rest on the bottom screen
            const SizedBox(height: 180),
            const Text(
              'Remember!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF797070),
                fontSize: 26,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 2),
            const SizedBox(
              width: 430,
              height: 160,
              child: Column(
                children: [
                  SizedBox(
                    height: 80, // Adjust the height as needed
                    child: Text(
                      'The more Private Challenges you complete, the more points you will get.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF797070),
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        decoration: TextDecoration.none,
                      ),
                      softWrap: true,
                    ),
                  ),
                  SizedBox(
                    height: 80, // Adjust the height as needed
                    child: Text(
                      'Challenge yourself!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF797070),
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        decoration: TextDecoration.none,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
