import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/NavigationBar.dart';
import 'package:myapp/page-1/group-challenge.dart';
import 'package:myapp/page-1/private-challenge.dart';
import 'package:myapp/page-1/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

Future<int> findMaxChallengeId() async {
  QuerySnapshot querySnapshot =
      await FirebaseFirestore.instance.collection('Challenges').get();

  int maxChallengeId = 0;

  for (QueryDocumentSnapshot document in querySnapshot.docs) {
    int currentId = int.tryParse(document.id) ?? 0;
    if (currentId > maxChallengeId) {
      maxChallengeId = currentId;
    }
  }
  return maxChallengeId;
}

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
              Navigator.pop(context);
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

void _showExitPrivateChallengeConfirmation(
    BuildContext context, String username, UserData userData, int points) {
  print('My username is: $username');
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Skip Challenge'),
        content: const Text(
            'Are you sure you want to skip this challenge? You will be deducted 30 points and a new random challenge will be ready for you'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              // reduce points by 30 if i can

              await FirebaseFirestore.instance
                  .collection('Users')
                  .where('username', isEqualTo: username)
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
                  int updatedPoints = currentPoints - 30;

                  bool enough = true;
                  if (updatedPoints < 0) {
                    enough = false;
                  }

                  document.reference.update({
                    'PrivateChallengeID': newChallengeID,
                    'ChallengeDuration': challengeDuration,
                    'points': enough ? updatedPoints : 0,
                  });
                }
              });

              // get a new challengeid
              int maxChallengeId = await findMaxChallengeId();
              int randomChallengeId = Random().nextInt(maxChallengeId) + 1;
              DocumentSnapshot challengeSnapshot = await FirebaseFirestore
                  .instance
                  .collection('Challenges')
                  .doc(randomChallengeId.toString())
                  .get();

              String challengeTitleShook = challengeSnapshot['Title'];
              String challengeDescriptionShook =
                  challengeSnapshot['Description'];
              print('Generated random challenge ID: $randomChallengeId');

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(userData: userData)),
              );
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
  int points;

  Challenge({
    Key? key,
    required this.userData,
    this.challengeInfo = const {},
    this.isGroup = false,
    this.challengeTitle = '',
    this.groupName = '',
    this.duration = '',
    required this.points,
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
    _remainingTime = Duration(days: int.parse(widget.duration));
    _timer = Timer.periodic(const Duration(seconds: 1), _updateTimer);
  }

  void _updateTimer(Timer timer) {
    setState(() {
      if (_remainingTime.inSeconds > 0) {
        _remainingTime = _remainingTime - const Duration(seconds: 1);
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
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
        if (!widget.isGroup) {
          _showExitPrivateChallengeConfirmation(
              context,
              widget.userData.currentUser!.username,
              widget.userData,
              widget.points);
        }
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
  int points = 0;

  @override
  void initState() {
    super.initState();
    loadChallenges();
  }

  Future<void> loadChallenges() async {
    points = (await getUserPoints(widget.userData.currentUser!.username))!;
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
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.deepPurple,
          textColor: Colors.white,
          fontSize: 16.0,
          webShowClose: true);
    }
    print('Username: ${widget.userData.currentUser?.username}');

    if (isLoading) {
      return Scaffold(
          body: Container(
        width: 430,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/page-1/images/Background3.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitFadingCircle(
                color: Colors.deepPurple,
                size: 50.0,
              ),
              SizedBox(height: 20),
              Text(
                'Loading Challenges...',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ));
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
                  (points ?? 0) < 100
                      ? 'Level: Beginner'
                      : (points ?? 0) <= 200
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
                  number: points.toString(),
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
                      points: points,
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
                    if (challengeInfo.isEmpty)
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                        height: 100,
                        width: 376,
                        padding:
                            const EdgeInsets.only(top: 5, left: 10, bottom: 5),
                        decoration: ShapeDecoration(
                          color: const Color(0x7FF1EAFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color.fromARGB(163, 207, 162, 247),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Get motivated with ArtSync and in this area you will find your active group challenges",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF7B33B7),
                            ),
                          ),
                        ),
                      ),
                    for (int i = 0; i < challengeInfo.length; i++)
                      Challenge(
                        userData: widget.userData,
                        isGroup: true,
                        duration: challengeInfo[i]['duration'] ?? '',
                        groupName: challengeInfo[i]['groupName'] ?? '',
                        challengeTitle: challengeInfo[i]['title'] ?? '',
                        challengeInfo: challengeInfo[i],
                        points: points,
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
