import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/choose-an-avatar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top:0,
            left:0,
            child: Background1(),
          ), 
          Center(
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
                  const Text(
                    'Enter your E-mail:',
                    style: TextStyle(
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'E-mail',
                          hintStyle: TextStyle(
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
                  const SizedBox(height: 20),
                  const Text(
                    'Pick a username:',
                    style: TextStyle(
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          hintStyle: TextStyle(
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
                  const SizedBox(height: 20),
                  const Text(
                    'Pick a password:',
                    style: TextStyle(
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
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
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
                  const SizedBox(height: 90),
                ],
              ),
            ),
            Positioned (
            top: 750,
            left: 250,
                    child: SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                       onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ChooseAvatar()),
                        );
                        },
                        child: const Text('Continue',
                            style: TextStyle(
                              fontSize: 20,
                            )
                          ),
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
