import 'package:flutter/material.dart';
import 'package:myapp/page-1/NavigationBar.dart';
import 'package:myapp/page-1/group-challenge.dart';
import 'package:myapp/page-1/private-challenge.dart';

void _showExitChallengeConfirmation(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Exit Ghallenge'),
        content: Text('Are you sure you want to exit this challenge?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Perform the exit group operation
              // Add your logic to exit the group here

              // Close the dialog
              Navigator.pop(context);
            },
            child: Text('Exit'),
          ),
        ],
      );
    },
  );
}

class CircularTextContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final Color containerColor;

  const CircularTextContainer({
    Key? key,
    required this.text1,
    required this.text2,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 15, 0),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: containerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: const TextStyle(
                color: Color(0xFF7B33B7),
                fontSize: 36,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0),
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Color(0xFF7B33B7),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class Challenge extends StatelessWidget {
  final bool isGroup;

  const Challenge({Key? key, required this.isGroup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        _showExitChallengeConfirmation(context);
      },
      onTap: () {
        if (isGroup) {
          // Navigate to GroupChallengePage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GroupChallenge()),
          );
        } else {
          // Navigate to PrivateChallengePage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PrivateChallenge()),
          );
        }
      },
      child: Container(
        height: 165,
        width: 376,
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isGroup
              ? const Color.fromARGB(255, 192, 157, 248)
              : Colors.deepPurple,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Column(
          children: [
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    isGroup ? 'Group Challenge' : 'Private Challenge',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45),
            isGroup
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Group Name",
                          style: TextStyle(
                            color: Color(0xFFA75FE3),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "15d 2h 12min",
                          style: TextStyle(
                            color: Color(0xFFA75FE3),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "2d 5h 36min",
                        style: TextStyle(
                          color: Color(0xFFD0A2F7),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 430,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/page-1/images/Background3.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 170),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Level: Beginner ',
                  style: TextStyle(
                    color: Color(0xFF7B33B7),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                CircularTextContainer(
                  text1: '342',
                  text2: 'points',
                  containerColor: Color(0xFFE5D4FF),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Challenge(isGroup: false),
                    Challenge(isGroup: true),
                    Challenge(isGroup: true),
                    Challenge(isGroup: true),
                    Challenge(isGroup: true),
                    Challenge(isGroup: true),
                  ],
                ),
              ),
            ),
            NavigationBar1(),
          ],
        ),
      ),
    );
  }
}
