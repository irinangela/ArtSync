import 'package:flutter/material.dart';
import 'package:myapp/page-1/login-page-2.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Background1(),
          ),
          Center(
            child: MainText(
              onEmailChanged: (val) {
                setState(() => email = val);
              },
            ),
          ),
          Positioned(
            top: 750,
            left: 250,
            child: SizedBox(
              width: 120,
              height: 50,
              child: SubmitButton(
                onPressed: () {
                  // Show a dialog with the entered email when the button is pressed
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                            'Please follow the directions we have sent you to $email to create a new password.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage2(),
                                ),
                              );
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                text: 'Ready',
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainText extends StatefulWidget {
  final ValueChanged<String> onEmailChanged;

  const MainText({Key? key, required this.onEmailChanged}) : super(key: key);
  @override
  _MainTextState createState() => _MainTextState();
}

class _MainTextState extends State<MainText> {
  late bool isTyping;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    isTyping = false;
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        isTyping = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                children: [
                  SizedBox(height: 200),
                  Text(
                    'Forgot Password?\nNo problem',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 350,
                    child: Text(
                      'Write here your email address and we will send you a link to create a new one.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  const Text(
                    'Please type your Email Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      onChanged: (val) {
                        widget.onEmailChanged(val);
                      },
                      onTap: () {
                        setState(() {
                          isTyping = true;
                        });
                      },
                      focusNode: focusNode,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 10.0,
                        ),
                        hintText: isTyping ? '' : 'E-mail',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight:
                              isTyping ? FontWeight.bold : FontWeight.w400,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 490,
          left: screenWidth / 2 - 130,
          child: Image.asset(
            "assets/page-1/images/undrawwelldonere3hpo-1.png",
            width: 260,
            height: 180,
          ),
        ),
      ],
    );
  }
}

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double fontSize;

  const SubmitButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}

class Background1 extends StatelessWidget {
  const Background1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 932,
      width: 430,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/page-1/images/Background1.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
