import 'package:flutter/material.dart';

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
      onTap: () {
        isGroup
            ? print("GroupChallenge tapped")
            : print("PrivateChallenge tapped");
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

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  bool showText1 = false;
  bool showText2 = false;
  bool showText3 = false;

  void _showText(int containerIndex) {
    setState(() {
      switch (containerIndex) {
        case 1:
          showText1 = true;
          showText2 = false;
          showText3 = false;
          break;
        case 2:
          showText1 = false;
          showText2 = true;
          showText3 = false;
          break;
        case 3:
          showText1 = false;
          showText2 = false;
          showText3 = true;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 77,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFE5D4FF), // Light Purple Background
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => _showText(1),
            child: RoundedContainer(
              showHello: showText1,
              imageAsset: 'assets/page-1/images/ControlMenu_QR.png',
              labelText: 'Scanner',
            ),
          ),
          GestureDetector(
            onTap: () => _showText(2),
            child: RoundedContainer(
              showHello: showText2,
              imageAsset: 'assets/page-1/images/ControlMenu_Home.png',
              labelText: 'Home',
            ),
          ),
          GestureDetector(
            onTap: () => _showText(3),
            child: RoundedContainer(
              showHello: showText3,
              imageAsset: 'assets/page-1/images/ControlMenu_Profile.png',
              labelText: 'Profile',
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final bool showHello;
  final String imageAsset;
  final String labelText;

  const RoundedContainer({
    Key? key,
    required this.showHello,
    required this.imageAsset,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: showHello ? Color(0xFFD0A2F7) : Color(0xFFE5D4FF),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imageAsset,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
          if (showHello)
            Positioned(
              right: 50,
              child: Text(
                labelText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
        ],
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
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
            NavigationBar(),
          ],
        ),
      ),
    );
  }
}
