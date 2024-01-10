// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:myapp/page-1/create-a-group.dart';
import 'package:myapp/page-1/group-challenge.dart';
import 'package:myapp/page-1/home-page.dart';
import 'package:myapp/page-1/login-page-1.dart';
import 'package:myapp/page-1/login-page-2.dart';
import 'package:myapp/page-1/private-challenge.dart';
import 'package:myapp/page-1/profile-page.dart';
import 'package:myapp/page-1/rating-page.dart';
import 'package:myapp/page-1/sign-up-page.dart';
import 'package:myapp/page-1/NavigationBar.dart';
import "package:myapp/page-1/app_state.dart";
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArtSync',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //home: const LoginPage1(),
      home: const HomePage(),
/*     
      routes: {
        '/login2': (context) => const LoginPage2(),
        '/signup': (context) => const SignUpPage(),
      }
*/
    );
  }
}

/*
class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage1()),
            );
          },
          child: const Text('Go to Login Page 1'),
        ),
      ),
    );
  }
}
*/