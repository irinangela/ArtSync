import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/rating-page.dart';

void _showCenteredContainerWithImage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Your image widget here
              Image.asset(
                'assets/page-1/images/QRcode.png',
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class AvatarChallenge extends StatelessWidget {
  final String username;

  const AvatarChallenge({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/page-1/images/avatar1.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  print("acttion to user in challenge");
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF1EAFF),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          '@$username',
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}

class GroupChallenge extends StatefulWidget {
  final UserData userData;
  const GroupChallenge({Key? key, required this.userData}) : super(key: key);

  @override
  State<GroupChallenge> createState() => _GroupChallengeState();
}

class _GroupChallengeState extends State<GroupChallenge> {
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
                    text: 'Group: ',
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
                    text: ' Group name',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'Group challenge Title',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showCenteredContainerWithImage(context);
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/page-1/images/QRbutton.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
              ],
            ),
            const SizedBox(height: 10),
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
                  side: const BorderSide(width: 1, color: Color(0xFFD0A2F7)),
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
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Here will be the description of the group challenge',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 50, 35, 35),
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
            const Text(
              'See your friends’ progress here:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AvatarChallenge(username: 'username${index * 2 + 1}'),
                        AvatarChallenge(username: 'username${index * 2 + 2}'),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            //const SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 60),
                GestureDetector(
                  onTap: () {
                    /*
                Navigator.push(
                  
                      context,
                      MaterialPageRoute(builder: (context) => const CameraApp()),
                 
                    ); */
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/page-1/images/CameraButton.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),

                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RatingPage(userData: widget.userData)),
                      );
                    },
                    child: Container(
                      //margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5D4FF),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Text(
                        "Rate",
                        style: TextStyle(
                          color: Color(0xFFA75FE3),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )),
                //const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
