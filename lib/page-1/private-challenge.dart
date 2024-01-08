import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myapp/utils.dart';

class Background2 extends StatelessWidget {
  const Background2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 932,
      width: 430,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/page-1/images/Background2.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
