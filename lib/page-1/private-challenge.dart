import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/camera.dart';
import 'package:myapp/page-1/home-page.dart';

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
      child: Text(text, style: TextStyle(fontSize: fontSize)),
    );
  }
}

class PrivateChallenge extends StatefulWidget {
  final UserData userData;
  final Map<String, String> privchallengeInfo;

  PrivateChallenge(
      {Key? key, required this.userData, required this.privchallengeInfo})
      : super(key: key);
  static const String text = "goodbye";

  @override
  State<PrivateChallenge> createState() => _PrivateChallengeState();
}

class _PrivateChallengeState extends State<PrivateChallenge> {
  @override
  Widget build(BuildContext context) {
    var currentUsername = widget.userData.currentUser?.username;
    var currentChallengeID = widget.userData.currentUser?.PrivateChallengeID;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          Container(
            width: 430,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page-1/images/Background2.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Text.rich(
                  textAlign: TextAlign.start,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your ',
                        style: TextStyle(
                            color: Color(0xFFA75FE3),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            decoration: TextDecoration.none),
                      ),
                      TextSpan(
                        text: 'private',
                        style: TextStyle(
                          color: Color(0xFFA75FE3),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: ' challenge ',
                        style: TextStyle(
                          color: Color(0xFFA75FE3),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.privchallengeInfo['title']!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("+30 pnts",
                    style: TextStyle(
                        color: Color(0xFFA75FE3),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        decoration: TextDecoration.none)),
                const Text(
                  "--------------------------------------------------",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0x30E5D4FF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFD0A2F7)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x4CF1EAFF),
                        blurRadius: 5,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          widget.privchallengeInfo['description']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CameraApp(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/page-1/images/CameraButton.png',
                        height: 80, width: 80),
                  ),
                ),
                //large sizedbox here so that we can have the rest on the bottom screen
                const SizedBox(height: 70),
                const Text(
                  'Remember!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF797070),
                    fontSize: 26,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 2),
                const Column(
                  children: [
                    Text(
                      'The more Private Challenges you complete, the more points you will get.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF797070),
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        decoration: TextDecoration.none,
                      ),
                      softWrap: true,
                    ),
                    Text(
                      'Challenge yourself!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF797070),
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        height: 1.2,
                        decoration: TextDecoration.none,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 750,
            left: 135,
            child: SizedBox(
              width: 160,
              height: 50,
              child: SubmitButton(
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection('Users')
                      .where('username', isEqualTo: currentUsername)
                      .get()
                      .then((querySnapshot) {
                    if (querySnapshot.docs.isNotEmpty) {
                      var document = querySnapshot.docs.first;
                      int newChallengeID =
                          (document['PrivateChallengeID'] ?? 0) + 1;

                      var nextDuration = document['NextDuration'];
                      int challengeDuration =
                          nextDuration != null ? nextDuration as int : 0;
                      int currentPoints = document['points'] ?? 0;
                      int updatedPoints = currentPoints + 30;

                      document.reference.update({
                        'PrivateChallengeID': newChallengeID,
                        'ChallengeDuration': challengeDuration,
                        'points': updatedPoints,
                      });
                    }
                  });

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage(userData: widget.userData)),
                  );
                },
                text: 'Submit',
                fontSize: 20,
              ),
            ),
          ),
        ]));
  }
}
