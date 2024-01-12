// ignore_for_file: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/firebase_options.dart';
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
import 'package:myapp/models.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserData(),
      child: const MyApp(),
    ),
  );
}

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
      home: const LoginPage1(),
    );
  }
}
