import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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

void _showDeleteConfirmationDialog(BuildContext context, String groupid,
    List<Map<String, String>> userList, UserData userData) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Delete Group'),
        content: const Text('Are you sure you want to delete this group?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              await deleteGroupAndReferences(groupid, userList);
              Navigator.pop(context, true); // Signal that a group is deleted
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(userData: userData),
                ),
              );
            },
            child: const Text('Okay'),
          ),
        ],
      );
    },
  );
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
                              widget.userData);
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
                    // Centered SubmitButton1
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          String challengeId =
                              widget.groupinfo['challengeid'] ??
                                  ''; // Assuming it's a string

                          if (challengeId == '0') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SetChallenge(
                                      userData: widget.userData,
                                      groupId: widget.groupinfo['groupid'])),
                            );
                          } else {
                            // Show dialog indicating an active challenge
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Active Challenge'),
                                  content: Text(
                                      'There is already an active challenge for group ${widget.groupinfo['groupname']}'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Close the dialog
                                      },
                                      child: Text('OK'),
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
                            color: Color(0xFF7B33B7),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: const Text(
                            "New Challenge",
                            style: TextStyle(
                              color: const Color(0xFFE5D4FF),
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

  @override
  void initState() {
    super.initState();
    fetchFriendsData();
    fetchData();
  }

  Future<void> fetchFriendsData() async {
    try {
      var currentUser = widget.userData.currentUser;

      // Fetch friends data from Firestore based on the user's information
      QuerySnapshot friendsSnapshot = await FirebaseFirestore.instance
          .collection('Users')
          .where('username', isEqualTo: currentUser?.username)
          .get();

      if (friendsSnapshot.docs.isNotEmpty) {
        // Extract the friends list from the snapshot
        List<dynamic> friendsData = (friendsSnapshot.docs.first.data()
                as Map<String, dynamic>?)?['Friends'] ??
            [];

        // Ensure that friendsData is a list of strings
        List<String> friendsUsernames = List<String>.from(friendsData);

        // Iterate over the friends data and fetch additional information
        for (var friendUsername in friendsUsernames) {
          DocumentSnapshot friendSnapshot = await FirebaseFirestore.instance
              .collection('Users')
              .where('username', isEqualTo: friendUsername)
              .get()
              .then((querySnapshot) => querySnapshot.docs.first);

          // Extract avatar and other information from the friend's snapshot
          String avatar = (friendSnapshot.data()
                  as Map<String, dynamic>?)?['avatar'] as String? ??
              '';

          // Add the friend's data to the list
          friendsList.add({
            'username': friendUsername,
            'avatar': avatar,
          });
        }

        // Update the state to trigger a rebuild with the fetched data
        setState(() {});
      } else {
        print('No documents found in friendsSnapshot');
      }
    } catch (e) {
      print('Error fetching friends data: $e');
    }
  }

  void fetchData() async {
    String username = widget
        .userData.currentUser!.username; // Replace with the actual username

    // Get the groups for the given username
    groups = await getGroupsByUsername(username);

    // Iterate through each group and fetch members
    for (Map<String, dynamic> group in groups) {
      String groupId = group['groupid'];

      // Get members for the current group
      List<Map<String, String>> groupMembers = await getGroupMembers(groupId);

      // Add the group members to the list
      allGroupMembers.add(groupMembers);
    }

    setState(() {});

    // Print or use the result as needed
    for (int i = 0; i < allGroupMembers.length; i++) {
      print("Group Members for Group ${i + 1}:");

      // Access the group ID from the result of getGroupsByUsername
      String groupId = groups[i]['groupid'];

      print("Group ID: $groupId");

      allGroupMembers[i].forEach((member) {
        print("${member['username']}: ${member['avatar']}");
      });

      print("------");
    }
  }

  @override
  Widget build(BuildContext context) {
    print(groups);
    print(Alignment.bottomCenter);

    print('Username: ${widget.userData.currentUser?.username}');
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
                  imageSize: 120.0, // Adjust as needed
                  fontSize: 18.0, // Adjust as needed
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
