import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/camera.dart';
import 'package:myapp/page-1/rating-page.dart';
import 'package:myapp/page-1/services.dart';

class MyImageContainer extends StatefulWidget {
  final String user;
  final String groupname;
  final String photo;
  const MyImageContainer(
      {super.key,
      required this.user,
      required this.groupname,
      required this.photo});

  @override
  _MyImageContainerState createState() => _MyImageContainerState();
}

class _MyImageContainerState extends State<MyImageContainer> {
  String currentImage = 'assets/page-1/images/bellbutton_notpushed.png';
  bool imageChanged = false;
  int status = 0;

  void changeImage() {
    print('Changing image');
    if (!imageChanged) {
      setState(() {
        currentImage = 'assets/page-1/images/bellbutton_pushed.png';
        imageChanged = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.photo == '0') {
      status = 0;
      currentImage = 'assets/page-1/images/bellbutton_notpushed.png';
    } else if (widget.photo == '2') {
      status = 1;
      currentImage = 'assets/page-1/images/skipbutton.png';
    } else {
      status = 2;
      currentImage = 'assets/page-1/images/CheckButton.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (status == 0) {
          print(status);
          changeImage();
          setState(() {});
          await updateNotificationField(widget.user, widget.groupname);
        }
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF1EAFF),
        ),
        child: ClipOval(
          child: Image.asset(
            currentImage,
            width: 35,
            height: 35,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

void _showCenteredContainerWithImage(BuildContext context, String groupname) {
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
              Text("$groupname QRcode:"),
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

class AvatarChallenge extends StatefulWidget {
  final String username;
  final String avatar;
  final String groupname;
  final String photo;

  const AvatarChallenge({
    Key? key,
    required this.username,
    required this.avatar,
    required this.groupname,
    required this.photo,
  }) : super(key: key);

  @override
  State<AvatarChallenge> createState() => _AvatarChallengeState();
}

class _AvatarChallengeState extends State<AvatarChallenge> {
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
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(widget.avatar),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: MyImageContainer(
                    user: widget.username,
                    groupname: widget.groupname,
                    photo: widget.photo)),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          '@${widget.username}',
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}

class GroupChallenge extends StatefulWidget {
  final UserData userData;
  final Map<String, String> challengeInfo;

  const GroupChallenge(
      {Key? key, required this.userData, required this.challengeInfo})
      : super(key: key);

  @override
  State<GroupChallenge> createState() => _GroupChallengeState();
}

class _GroupChallengeState extends State<GroupChallenge> {
  List<Map<String, String>> members = [];
  List<Map<String, dynamic>> submissions = [];

  @override
  void initState() {
    super.initState();
    someFunction();
  }

  void someFunction() async {
    String id = widget.challengeInfo['groupId']!;
    members = await getGroupMembers(id);
    submissions = await getSubmissions(id);

    // This will trigger a rebuild with the updated members list
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print(submissions);

    List<Map<String, dynamic>> membersNotMe =
        removeUserFromList(members, widget.userData.currentUser?.username);
    List<Map<String, dynamic>> photoinfo =
        removeUserFromList(submissions, widget.userData.currentUser?.username);

    print(membersNotMe);

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
            Text.rich(
              textAlign: TextAlign.start,
              TextSpan(
                children: [
                  const TextSpan(
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
                    text: widget.challengeInfo['groupName']!,
                    style: const TextStyle(
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
                Expanded(
                  child: Text(
                    widget.challengeInfo['title']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
                    _showCenteredContainerWithImage(
                        context, widget.challengeInfo['groupName']!);
                  },
                  child: Image.asset(
                    'assets/page-1/images/QRbutton.png',
                    width: 50,
                    height: 50,
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
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      widget.challengeInfo['description']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
                color: Color.fromARGB(255, 103, 43, 43),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < membersNotMe.length; i += 2)
                      Row(
                        children: [
                          if (i < membersNotMe.length)
                            Expanded(
                              child: Column(
                                children: [
                                  AvatarChallenge(
                                    username: membersNotMe[i]['username']!,
                                    avatar: membersNotMe[i]['avatar']!,
                                    groupname:
                                        widget.challengeInfo['groupName']!,
                                    photo: getPhotoByUsername(
                                      submissions,
                                      membersNotMe[i]['username']!,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          if (i + 1 < membersNotMe.length)
                            Expanded(
                              child: Column(
                                children: [
                                  AvatarChallenge(
                                    username: membersNotMe[i + 1]['username']!,
                                    avatar: membersNotMe[i + 1]['avatar']!,
                                    groupname:
                                        widget.challengeInfo['groupName']!,
                                    photo: getPhotoByUsername(
                                      submissions,
                                      membersNotMe[i + 1]['username']!,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Submission button

                GestureDetector(
                  onTap: () {
                    submitData(
                        context,
                        widget.challengeInfo['groupId']!,
                        widget.userData.currentUser!.username,
                        'assets/page-1/images/sky1.png',
                        submissions);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5D4FF),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: Color(0xFFA75FE3),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),

                // camera button

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CameraApp()),
                    );
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

                //rate button

                GestureDetector(
                  onTap: () async {
                    List<String> usersReadyToSubmit =
                        readyToSubmit(submissions);
                    if (usersReadyToSubmit.length == members.length) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RatingPage(
                                userData: widget.userData,
                                submissions: submissions,
                                groupId: widget.challengeInfo['groupId']!)),
                      );
                    } else {
                      // Show a pop-up message indicating that not enough users are ready
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Not Enough Users Ready'),
                            content: const Text(
                                'All the members of the group should have committed in order for you to rate!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Container(
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
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
