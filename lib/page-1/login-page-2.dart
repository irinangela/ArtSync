import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:myapp/page-1/forgot-password.dart';
import 'package:myapp/page-1/sign-up-page.dart';
import 'package:myapp/page-1/home-page.dart';
import 'package:myapp/models.dart';

class SlidingWindow extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final bool isTypingUs;
  final bool isTypingPass;

  const SlidingWindow({
    required this.emailController,
    required this.passwordController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.isTypingUs,
    required this.isTypingPass,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Transform.translate(
        offset: Offset(0, isKeyboardVisible ? -80 : 0),
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
          child: Stack(
            children: [
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
                  'Please type your E-mail',
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
                  child: Stack(
                    children: [
                      Positioned(
                        child: TextField(
                          controller: emailController,
                          onTap: () {
                            emailFocusNode.requestFocus();
                          },
                          focusNode: emailFocusNode,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 13.0,
                              horizontal: 10.0,
                            ),
                            hintText: isTypingUs ? '' : 'E-mail',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: const TextStyle(
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
                  child: Stack(
                    children: [
                      Positioned(
                        child: TextField(
                          controller: passwordController,
                          onTap: () {
                            passwordFocusNode.requestFocus();
                          },
                          obscureText: true,
                          focusNode: passwordFocusNode,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 13.0,
                              horizontal: 10.0,
                            ),
                            hintText: isTypingPass ? '' : 'Password',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: const TextStyle(
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
      );
    });
  }
}

class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  final _formkey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late FocusNode emailFocusNode;
  late FocusNode passwordFocusNode;
  late bool isTypingPass;
  late bool isTypingUs;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _showErrorDialog(
      BuildContext context, String errorMessage) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);

      var user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
            .collection('Users')
            .doc(user.uid)
            .get();

        if (userSnapshot.exists) {
          UserData userData = UserData();
          userData.setUser(UserInfoModel(
            username: userSnapshot['username'],
            email: userSnapshot['email'],
            password: userSnapshot['password'],
            QRcode: userSnapshot['QRcode'],
            avatar: userSnapshot['avatar'],
            points: userSnapshot['points'],
            ChallengeDuration: userSnapshot['ChallengeDuration'],
            PrivateChallengeID: userSnapshot['PrivateChallengeID'],
            NextDuration: userSnapshot['NextDuration'],
            notifications: Notifications(
              groupname: userSnapshot['Notifications']['groupname'] ?? '0',
              notify: userSnapshot['Notifications']['notify'] ?? 0,
            ),
            ChallengePointsUpdated: userSnapshot['ChallengePointsUpdated'],
          ));
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage(userData: userData)),
          );
        }
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage =
          'Wrong email or password. Please try again.  If you do not have an account Sing Up below.';
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        errorMessage =
            'Wrong email or password. Please try again. If you do not have an account Sing Up below.';
      }
      _showErrorDialog(context, errorMessage);
    }
  }

  @override
  void initState() {
    super.initState();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    isTypingUs = false;
    isTypingPass = false;

    emailFocusNode.addListener(() {
      setState(() {
        isTypingUs = emailFocusNode.hasFocus;
      });
    });

    passwordFocusNode.addListener(() {
      setState(() {
        isTypingPass = passwordFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Form(
            key: _formkey,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: -268,
                  child: Image.asset(
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
                KeyboardVisibilityBuilder(
                    builder: (context, isKeyboardVisible) {
                  return Positioned(
                    left: 36,
                    top: isKeyboardVisible ? 116 : 156,
                    child: const SizedBox(
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
                  );
                }),
                Container(
                  child: Positioned(
                    left: 0,
                    top: 270,
                    child: SlidingWindow(
                      emailController: emailController,
                      passwordController: passwordController,
                      emailFocusNode: emailFocusNode,
                      passwordFocusNode: passwordFocusNode,
                      isTypingUs: isTypingUs,
                      isTypingPass: isTypingPass,
                    ),
                  ),
                ),
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
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()),
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
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 180,
                  top: 680,
                  child: GestureDetector(
                    onTap: () {
                      if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        _signInWithEmailAndPassword(emailController.text,
                            passwordController.text, context);
                      } else {
                        _showErrorDialog(
                            context, 'Please enter both email and password.');
                      }
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
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
