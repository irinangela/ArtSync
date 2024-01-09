import 'package:flutter/material.dart';
import 'package:myapp/page-1/set-a-challenge.dart';

class Background4 extends StatelessWidget {
  const Background4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 932,
      width: 430,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/page-1/images/Background4.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
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
        style: TextStyle(fontSize: fontSize)
        ),
    );
  }
}

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Background4(),
          ),
          Positioned(
          bottom: 20,
          left: 290,
          right: 20,
          child: SizedBox( 
            /*
            width: 250,
            height: 50,
            child: SubmitButton(       
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SetChallenge()),
                );
              },    
              text: 'New',
              fontSize: 20,
            ), 
            */
          ),
        ),
        ],
      )
    );
  }
} 