import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/page-1/home-page.dart';
import 'package:myapp/models.dart';

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
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class AvatarUser extends StatelessWidget {
  final String avatarImagePath;
  final bool isSelected;
  final Function() onTap;

  const AvatarUser({
    Key? key,
    required this.avatarImagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(avatarImagePath),
            backgroundColor: isSelected ? Colors.blue : null,
          ),
          const SizedBox(height: 8),
        ],
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
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}

class ChooseAvatar extends StatefulWidget {
  final User? user;
  final String email;
  final String username;
  final String password;

  const ChooseAvatar({
    Key? key,
    required this.user,
    required this.email,
    required this.username,
    required this.password,
  }) : super(key: key);

  @override
  _ChooseAvatarState createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
  late String selectedAvatar;
  late UserData userData;

  @override
  void initState() {
    super.initState();
    selectedAvatar = '';
    userData = UserData();
  }

  // Function to get the storage path for the avatar
  String getStoragePath(String assetPath) {
    return assetPath;
  }

  // Function to update Firestore with user information
  Future<void> updateFirestore() async {
    try {
      if (widget.user != null) {
        await FirebaseFirestore.instance
            .collection('Users')
            .doc(widget.user!.uid)
            .set({
          'avatar': getStoragePath(selectedAvatar),
          'username': widget.username,
          'password': widget.password,
          'email': widget.email,
          'points': 0,
          'QRcode': 'assets/page-1/images/QRcode.png',
          'ChallengeDuration': 5,
          'PrivateChallengeID': 1,
          'NextDuration': 5,
          'Notifications': {
            'groupname': '0',
            'notify': 0,
          },
          'ChallengePointsUpdated': false,
          'groupID': [],
        }, SetOptions(merge: true));

        print('Firestore updated successfully!');

        userData.setUser(UserInfoModel(
          username: widget.username,
          email: widget.email,
          password: widget.password,
          QRcode: 'assets/page-1/images/QRcode.png',
          avatar: getStoragePath(selectedAvatar),
          points: 0,
          ChallengeDuration: 5,
          PrivateChallengeID: 1,
          NextDuration: 5,
          notifications: Notifications(
            groupname: '0',
            notify: 0,
          ),
          ChallengePointsUpdated: false,
        ));
      } else {
        print('Error: User is null.');
      }
    } catch (error) {
      print('Error updating Firestore: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> avatars = List.generate(
        23, (index) => 'assets/page-1/images/avatar${index + 1}.png');

    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Background2(),
          ),
          Positioned(
              top: 200,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Now it's time to choose an Avatar!\n",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Just click on your favorite",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(avatars.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AvatarUser(
                              avatarImagePath: avatars[index],
                              isSelected: avatars[index] == selectedAvatar,
                              onTap: () {
                                setState(() {
                                  if (selectedAvatar == avatars[index]) {
                                    selectedAvatar = '';
                                  } else {
                                    selectedAvatar = avatars[index];
                                  }
                                });
                              },
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 60),
                    Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          if (selectedAvatar.isNotEmpty)
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.purple,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.purple.withOpacity(1),
                                    spreadRadius: 5,
                                  ),
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(selectedAvatar),
                              ),
                            ),
                          if (selectedAvatar.isNotEmpty)
                            const CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.transparent,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 750,
            left: 250,
            child: SizedBox(
              width: 120,
              height: 50,
              child: SubmitButton(
                  onPressed: () async {
                    // Call the updateFirestore function before navigating to the next page
                    await updateFirestore();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(userData: userData)),
                    );
                  },
                  text: 'Sign Up',
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
