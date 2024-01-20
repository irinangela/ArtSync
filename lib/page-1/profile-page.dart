import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/NavigationBar.dart';
import 'package:myapp/page-1/create-a-group.dart';
import 'package:myapp/page-1/services.dart';
import 'package:myapp/page-1/set-a-challenge.dart';
import 'package:myapp/page-1/settings.dart';

void _showQRcode(BuildContext context) {
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
              const Text("QR code"),
              Image.asset(
                'assets/page-1/images/QRcode.png',
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
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

void _showDeleteConfirmationDialog(BuildContext context, String groupid,
    List<Map<String, String>> userList, UserData userData, String groupname) {
  //got enough users you user can just leave
  if (userList.length > 3) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Leave Group'),
          content: const Text('Are you sure you want to leave this group?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                await leaveGroup(userData.currentUser!.username, groupid);
                Navigator.pop(context, true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(userData: userData),
                  ),
                );
              },
              child: const Text('Leave'),
            ),
          ],
        );
      },
    );
  }

  //not enough users to maintain the froup so delete it
  else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Group'),
          content: const Text(
              'Are you sure you want to leave this group? This group will then be deleted for all members remaining cause a group of 2 users cannot be formed!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                await deleteGroup(groupid, userList);
                await deleteNotify(
                    userData.currentUser!.username, userList, groupname);

                Navigator.pop(context, true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(userData: userData),
                  ),
                );
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}

class CircularUserContainer extends StatelessWidget {
  final String imagePath;
  final String username;
  final double imageSize;
  final double fontSize;

  const CircularUserContainer({
    Key? key,
    required this.imagePath,
    required this.username,
    this.imageSize = 100.0,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          GestureDetector(
            onLongPress: () {
              _showQRcode(context);
            },
            child: Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '@$username',
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class GroupContainer extends StatefulWidget {
  final Map<String, dynamic> groupinfo;
  final List<Map<String, String>> members;
  final UserData userData;

  const GroupContainer({
    required this.groupinfo,
    required this.members,
    required this.userData,
    Key? key,
  }) : super(key: key);

  @override
  _GroupContainerState createState() => _GroupContainerState();
}

class _GroupContainerState extends State<GroupContainer> {
  double width = 370.0;
  double height = 70.0;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        width: width,
        height: isExpanded ? null : height,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        decoration: BoxDecoration(
          color: isExpanded ? const Color(0xFFD0A2F7) : const Color(0xFFDCBFFF),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.groupinfo['groupname']!,
                  style: const TextStyle(
                    color: Color(0xFF7B33B7),
                    fontSize: 20.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    if (!isExpanded)
                      Row(
                        children: [
                          for (int i = 0; i < widget.members.length; i++)
                            Row(
                              children: [
                                const SizedBox(width: 8),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          widget.members[i]['avatar']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    if (isExpanded)
                      GestureDetector(
                        onTap: () {
                          _showDeleteConfirmationDialog(
                              context,
                              widget.groupinfo['groupid']!,
                              widget.members,
                              widget.userData,
                              widget.groupinfo['groupname']!);
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/page-1/images/DeleteButton.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: isExpanded
                                ? const AssetImage(
                                    'assets/page-1/images/UpArrow.png')
                                : const AssetImage(
                                    'assets/page-1/images/DownArrow.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (isExpanded)
              Container(
                width: 394.02,
                margin: const EdgeInsets.all(2),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Color(0xFF7B33B7),
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            if (isExpanded)
              Container(
                margin: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Inner Column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < widget.members.length; i++)
                          Text(
                            '@${widget.members[i]['username']!}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          String challengeId =
                              widget.groupinfo['challengeid'] ?? '';

                          if (challengeId == '0') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SetChallenge(
                                      userData: widget.userData,
                                      groupId: widget.groupinfo['groupid'])),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Active Challenge'),
                                  content: Text(
                                      'There is already an active challenge for group ${widget.groupinfo['groupname']}'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Close the dialog
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
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color(0xFF7B33B7),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: const Text(
                            "New Challenge",
                            style: TextStyle(
                              color: Color(0xFFE5D4FF),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  final UserData userData;
  const ProfilePage({Key? key, required this.userData}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map<String, dynamic>> friendsList = [];
  List<Map<String, dynamic>> groups = [];
  List<List<Map<String, String>>> allGroupMembers = [];
  bool isLoading = true;
  Map<String?, String?> notifyMe = {'groupName': 'empty', 'user': 'empty'};
  int asyncOperationsCount = 2;

  @override
  void initState() {
    super.initState();
    fetchFriendsData();
    fetchData();
  }

  Future<void> fetchFriendsData() async {
    try {
      var currentUser = widget.userData.currentUser;

      QuerySnapshot friendsSnapshot = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: currentUser?.username)
          .get();

      if (friendsSnapshot.docs.isNotEmpty) {
        List<dynamic> friendsData = (friendsSnapshot.docs.first.data()
                as Map<String, dynamic>?)?['Friends'] ??
            [];

        List<String> friendsUsernames = List<String>.from(friendsData);

        for (var friendUsername in friendsUsernames) {
          DocumentSnapshot friendSnapshot = await FirebaseFirestore.instance
              .collection('Users')
              .where('username', isEqualTo: friendUsername)
              .get()
              .then((querySnapshot) => querySnapshot.docs.first);

          String avatar = (friendSnapshot.data()
                  as Map<String, dynamic>?)?['avatar'] as String? ??
              '';

          friendsList.add({
            'username': friendUsername,
            'avatar': avatar,
          });
        }

        setState(() {
          asyncOperationsCount--;
          checkAsyncOperations();
        });
      } else {
        print('No documents found in friendsSnapshot');
      }
    } catch (e) {
      print('Error fetching friends data: $e');
    }
  }

  void fetchData() async {
    String username = widget.userData.currentUser!.username;
    groups = await getGroupsByUsername(username);

    for (Map<String, dynamic> group in groups) {
      String groupId = group['groupid'];

      List<Map<String, String>> groupMembers = await getGroupMembers(groupId);

      allGroupMembers.add(groupMembers);

      notifyMe = await getDeleteNotification(username);
    }

    setState(() {
      asyncOperationsCount--;
      checkAsyncOperations();
    });

    for (int i = 0; i < allGroupMembers.length; i++) {
      print("Group Members for Group ${i + 1}:");

      String groupId = groups[i]['groupid'];

      print("Group ID: $groupId");

      allGroupMembers[i].forEach((member) {
        print("${member['username']}: ${member['avatar']}");
      });

      print("------");
    }
  }

  void checkAsyncOperations() {
    if (asyncOperationsCount == 0) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (notifyMe['groupName'] != 'empty' && notifyMe['user'] != 'empty') {
      Fluttertoast.showToast(
          msg:
              'Your group ${notifyMe['groupName']} has been deleted.\nUser: ${notifyMe['user']} left the group.',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.deepPurple,
          textColor: Colors.white,
          fontSize: 16.0,
          webShowClose: true);
    }
    print(groups);
    print(Alignment.bottomCenter);

    print('Username: ${widget.userData.currentUser?.username}');

    if (isLoading) {
      return Scaffold(
        body: Container(
          width: 430,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/page-1/images/Background2.png'),
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
                  'Loading Profile...',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
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
            const SizedBox(height: 70),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MySettings(userData: widget.userData)),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.6,
                        heightFactor: 0.6,
                        child: Image.asset(
                          'assets/page-1/images/SettingsButton.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                CircularUserContainer(
                  imagePath: widget.userData.currentUser?.avatar ??
                      'assets/page-1/images/default_avatar.png',
                  username:
                      widget.userData.currentUser?.username ?? 'Your Username',
                  imageSize: 120.0,
                  fontSize: 18.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showQRcode(context);
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Image.asset(
                          'assets/page-1/images/QRbutton.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateGroup(
                                    userData: widget.userData,
                                    friendsList: friendsList,
                                    allGroupMembers: allGroupMembers,
                                  )),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Image.asset(
                          'assets/page-1/images/NewGroup.png',
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '       Friends:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            if (friendsList.isEmpty)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                height: 100,
                width: 376,
                padding: const EdgeInsets.only(top: 5, left: 10, bottom: 5),
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
                    "Add some friends on ArtSync and in this area you will find your friendlist",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF7B33B7),
                    ),
                  ),
                ),
              ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: friendsList.map((friend) {
                  return CircularUserContainer(
                    imagePath: friend['avatar'] ?? '',
                    username: friend['username'] ?? '',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  );
                }).toList(),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '       Groups:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            if (groups.isEmpty)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                height: 100,
                width: 376,
                padding: const EdgeInsets.only(top: 5, left: 10, bottom: 5),
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
                    "Create some groups on ArtSync and in this area you will find group information",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF7B33B7),
                    ),
                  ),
                ),
              ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  for (int i = 0; i < groups.length; i++)
                    Column(
                      children: [
                        GroupContainer(
                          groupinfo: groups[i],
                          members: allGroupMembers[i],
                          userData: widget.userData,
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                ],
              )),
            ),
            NavigationBar1(userData: widget.userData),
          ],
        ),
      ),
    );
  }
}
