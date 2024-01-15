import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/NavigationBar.dart';
import 'package:myapp/page-1/group-challenge.dart';
import 'package:myapp/page-1/private-challenge.dart';
import 'package:myapp/page-1/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

void _showExitChallengeConfirmation(
    BuildContext context, String username, String groupname) {
  print('My username is: $username');
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Skip Challenge'),
        content: const Text(
            'Are you sure you want to skip this challenge? You will not submit a photo but you will be able to rate the other submissions.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              await skipChallenge(username, groupname);
              // Close the dialog
              Navigator.pop(context);
            },
            child: const Text('Skip'),
          ),
        ],
      );
    },
  );
}

//this is the class that show the circle with the points and the level

class Points extends StatefulWidget {
  final String number;
  final String points;
  final Color containerColor;

  const Points({
    Key? key,
    required this.number,
    required this.points,
    required this.containerColor,
  }) : super(key: key);

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 15, 0),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.containerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.number,
            style: const TextStyle(
                color: Color(0xFF7B33B7),
                fontSize: 36,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0),
          ),
          Text(
            widget.points,
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

//this is the class for private and group challenges

class Challenge extends StatefulWidget {
  UserData userData;
  final Map<String, String> challengeInfo;
  bool isGroup;
  String challengeTitle;
  String duration;
  String groupName;

  Challenge({
    Key? key,
    required this.userData,
    this.challengeInfo = const {},
    this.isGroup = false,
    this.challengeTitle = '',
    this.groupName = '',
    this.duration = '',
  }) : super(key: key);

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  late Timer _timer;
  late Duration _remainingTime;

  @override
  void initState() {
    super.initState();
    // Convert the string duration to a Duration object
    _remainingTime = Duration(days: int.parse(widget.duration));
    // Start the countdown timer
    _timer = Timer.periodic(const Duration(seconds: 1), _updateTimer);
  }

  void _updateTimer(Timer timer) {
    setState(() {
      if (_remainingTime.inSeconds > 0) {
        _remainingTime = _remainingTime - const Duration(seconds: 1);
      } else {
        _timer.cancel(); // Stop the timer when the countdown reaches zero
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String days = twoDigits(duration.inDays);
    String hours = twoDigits(duration.inHours.remainder(24));
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    return '$days d $hours h $minutes min';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        if (widget.isGroup)
          _showExitChallengeConfirmation(
              context, widget.userData.currentUser!.username, widget.groupName);
      },
      onTap: () {
        if (widget.isGroup) {
          // Navigate to GroupChallengePage
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GroupChallenge(
                userData: widget.userData,
                challengeInfo: widget.challengeInfo,
              ),
            ),
          );
        } else {
          // Navigate to PrivateChallengePage
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PrivateChallenge(
                userData: widget.userData,
                privchallengeInfo: widget.challengeInfo,
              ),
            ),
          );
        }
      },
      child: Container(
        height: 165,
        width: 376,
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: widget.isGroup
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
                  const SizedBox(width: 20),
                  Text(
                    widget.challengeTitle,
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
            widget.isGroup
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.groupName,
                          style: const TextStyle(
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
                          _formatDuration(_remainingTime),
                          // Display the formatted countdown timer
                          style: const TextStyle(
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
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        _formatDuration(_remainingTime),
                        // Display the formatted countdown timer
                        style: const TextStyle(
                          color: Color(0xFFD0A2F7),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final UserData userData;
  const HomePage({Key? key, required this.userData}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> challengeInfo = [];
  Map<String, String> privchallengeInfo = {};
  bool isLoading = true;
  String notifyMe = "empty";

  @override
  void initState() {
    super.initState();
    loadChallenges();
  }

  Future<void> loadChallenges() async {
    challengeInfo = await getGroupChallengesForUser(widget.userData);
    privchallengeInfo = await getPrivateChallengeForUser(widget.userData);
    notifyMe = (await getGroupNameAndResetNotification(
        widget.userData.currentUser!.username))!;
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(notifyMe);
    if (notifyMe != 'empty') {
      Fluttertoast.showToast(
          msg:
              'Notification from your group: $notifyMe.\nPlease keep up with your work for the challenge.',
          toastLength: Toast.LENGTH_SHORT, // Duration for the toast
          gravity: ToastGravity.TOP, // Position of the toast
          timeInSecForIosWeb: 1, // Duration for iOS (ignored on Android)
          backgroundColor: Colors.deepPurple, // Background color of the toast
          textColor: Colors.white, // Text color of the toast
          fontSize: 16.0, // Font size of the toast text
          webShowClose: true);
    }
    print('Username: ${widget.userData.currentUser?.username}');

    if (isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingCircle(
              color: Colors.blue, // Choose your desired color
              size: 50.0, // Choose your desired size
            ),
            SizedBox(height: 20),
            Text(
              'Loading Challenges...',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    }

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
            const SizedBox(height: 170),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  (widget.userData.currentUser?.points ?? 0) < 100
                      ? 'Level: Beginner'
                      : (widget.userData.currentUser?.points ?? 0) <= 200
                          ? 'Level: Intermediate'
                          : 'Level: Pro',
                  style: const TextStyle(
                    color: Color(0xFF7B33B7),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Points(
                  number: '${widget.userData.currentUser?.points}',
                  points: 'points',
                  containerColor: const Color(0xFFE5D4FF),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 15),
                        Text(
                          "Your private challenge:",
                          style: TextStyle(
                            color: Color(0xFFA75FE3),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Challenge(
                      userData: widget.userData,
                      isGroup: false,
                      duration: privchallengeInfo['duration'] ?? '',
                      groupName: privchallengeInfo['groupName'] ?? '',
                      challengeTitle: privchallengeInfo['title'] ?? '',
                      challengeInfo: privchallengeInfo,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 15),
                        Text(
                          "Your group challenges:",
                          style: TextStyle(
                            color: Color(0xFFA75FE3),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    for (int i = 0; i < challengeInfo.length; i++)
                      Challenge(
                        userData: widget.userData,
                        isGroup: true,
                        duration: challengeInfo[i]['duration'] ?? '',
                        groupName: challengeInfo[i]['groupName'] ?? '',
                        challengeTitle: challengeInfo[i]['title'] ?? '',
                        challengeInfo: challengeInfo[i],
                      ),
                  ],
                ),
              ),
            ),
            NavigationBar1(userData: widget.userData),
          ],
        ),
      ),
    );
  }
}
