import 'package:flutter/material.dart';
import 'package:myapp/page-1/forgot-password.dart';
import 'package:myapp/page-1/sign-up-page.dart';
import 'package:myapp/page-1/home-page.dart';
// ignore: unused_import
import 'package:myapp/utils.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: 430,
        height: 932,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
            children: [
                Positioned(
                    left: 0,
                    top: -268,
                    child: 
                      Image.asset(
                        "assets/page-1/images/pexels-photo-6952421-2-bg.png",
                        width: screenWidth,
                        height: 932,
                        fit: BoxFit.fill,
                      ),
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
                ),
                const Positioned(
                    left: 36,
                    top: 156,
                    child: SizedBox(
                        width: 250,
                        height: 36,
                        child: Text(
                            'Welcome back!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 30,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w800,
                                height: 0,
                            ),
                        ),
                    ),
                ),

                // White container
                Positioned(
                    left: 0,
                    top: 270,
                    child: SizedBox(
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
                                const Positioned(
                                    left: 89,
                                    top: 70,
                                    child: SizedBox(
                                        width: 252,
                                        height: 34,
                                        child: Text(
                                            'Login to your account',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                            ),
                                        ),
                                    ),
                                ),

                                const Positioned(
                                    left: 20,
                                    top: 150,
                                    child: Text(
                                        'Please type your E-mail or Username',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                        ),
                                    ),
                                ),
                                const Positioned(
                                    left: 20,
                                    top: 260,
                                    child: Text(
                                        'Please type your Password',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                        ),
                                    ),
                                ),
                                
                                Positioned(
                                  left: MediaQuery.of(context).size.width / 2 - 170,
                                  top: 190,
                                  child: Container(
                                    width: 340,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey), 
                                      borderRadius: BorderRadius.circular(8), 
                                    ),
                                    child: const Stack(
                                      children: [
                                        Positioned(
                                            child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                                              hintText: 'E-mail/Username',
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: MediaQuery.of(context).size.width / 2 - 170,
                                  top: 300,
                                  child: Container(
                                    width: 340,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey), 
                                      borderRadius: BorderRadius.circular(8), 
                                    ),
                                    child: const Stack(
                                      children: [
                                        Positioned(
                                          child: TextField(
                                            obscureText: true, // Hide the password
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                                              hintText: 'Password', 
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                            ],
                        ),
                    ),
                ),

                // Forgot Password
                Positioned(
                  left: 200,
                  top: 610,
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgotPassword()),
                          );
                        },
                        child: const Text(
                          'Forgot my password',
                          style: TextStyle(
                            color: Color(0xFF4A4646),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ), 
               
                // Login Button                  
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 180,
                  top: 680,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()), // Navigate to HomePage
                      );
                    },
                    child: Container(
                      width: 360,
                      height: 49,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFA75FE3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Don't have an account? Sign Up
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 150,
                  top: 760,
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 210,
                          height: 50,
                          child: Center( 
                            child: Text(
                              'Don’t have an account?',
                              style: TextStyle(
                                color: Color(0xFF535353),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90,
                          height: 50,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                                );
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFFA965E3),
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ]
        ),
      ),
    );
  }
}

         

      