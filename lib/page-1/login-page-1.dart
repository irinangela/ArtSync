import 'package:flutter/material.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 932,
      child: Stack(
        children: [
          Image.asset(
            "assets/page-1/images/pexels-photo-6952421-2-bg.png",
            width: 430,
            height: 932,
            fit: BoxFit.fill,
          ),
          Container(
            width: 430,
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
                        color: Color(0xFFF1EAFF),
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      'Swipe up to forget\nabout it.',
                      style: TextStyle(
                        color: Color(0xFFF1EAFF),
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
        ],
      ),
    );
  }
}