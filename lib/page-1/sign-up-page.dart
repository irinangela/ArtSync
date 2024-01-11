import 'package:flutter/material.dart';
import 'package:myapp/page-1/choose-an-avatar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/page-1/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formkey = GlobalKey<FormState>();
  String email = '';
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Background1(),
          ),
          Center(
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Create an account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 3,
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildTextFormField(
                    label: 'Enter your E-mail:',
                    hintText: 'E-mail',
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Type in an email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  buildTextFormField(
                    label: 'Pick a username:',
                    hintText: 'Username',
                    onChanged: (val) {
                      setState(() => username = val);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Type in a username";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  buildTextFormField(
                    label: 'Pick a password:',
                    hintText: 'Password',
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Type in a password";
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  const SizedBox(height: 90),
                ],
              ),
            ),
          ),
          Positioned(
            top: 750,
            left: 250,
            child: SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    // Form is valid, proceed with creating the user
                    createUserWithEmailAndPassword(email, password)
                        .then((User? user) {
                      if (user != null) {
                        // Navigate to the next page or perform any other actions
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseAvatar(
                              user: user,
                              email: email,
                              username: username,
                              password: password,
                            ),
                          ),
                        );
                      } else {
                        // Handle error
                        print("Error creating user");
                      }
                    }).catchError((error) {
                      // Handle errors if needed
                      print("Error creating user: $error");
                    });
                  }
                },
                child: const Text('Continue', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
          Positioned(
            top: 560,
            left: 430 / 2 - 130,
            child: Image.asset(
              "assets/page-1/images/undrawspecsre546x-1.png",
              width: 260,
              height: 190,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextFormField({
    required String label,
    required String hintText,
    required ValueChanged<String> onChanged,
    required String? Function(String?)? validator,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              onChanged: onChanged,
              validator: validator,
              obscureText: obscureText,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
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
        ),
      ],
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
