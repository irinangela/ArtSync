import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/profile-page.dart';
import 'package:myapp/page-1/services.dart';

typedef void OnTapCallback(String username);

class CircularUserInfoContainer extends StatefulWidget {
  final String username;
  final String avatar;
  final OnTapCallback onTap;

  const CircularUserInfoContainer({
    Key? key,
    required this.username,
    required this.avatar,
    required this.onTap,
  }) : super(key: key);

  @override
  _CircularUserInfoContainerState createState() =>
      _CircularUserInfoContainerState();
}

class _CircularUserInfoContainerState extends State<CircularUserInfoContainer> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tapped = !tapped;
        });
        widget.onTap(widget.username);
        print("user has been used");
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
          color: tapped
              ? const Color.fromARGB(236, 170, 134, 233)
              : const Color(0xFFF0E6FF),
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                widget.avatar,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '@${widget.username}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateGroup extends StatefulWidget {
  final UserData userData;
  List<Map<String, dynamic>> friendsList;
  List<List<Map<String, String>>> allGroupMembers;
  CreateGroup(
      {Key? key,
      required this.userData,
      required this.friendsList,
      required this.allGroupMembers})
      : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  String groupname = '';
  List<String> selectedUsers = [];

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
            const SizedBox(height: 60),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: const Text(
                  'Create your new',
                  style: TextStyle(
                    color: Color(0xFF7B33B7),
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: const Text(
                  'group!',
                  style: TextStyle(
                    color: Color(0xFF7B33B7),
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      groupname = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Group name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < widget.friendsList.length; i++)
                      Column(
                        children: [
                          CircularUserInfoContainer(
                            username: widget.friendsList[i]['username']!,
                            avatar: widget.friendsList[i]['avatar']!,
                            onTap: (username) {
                              setState(() {
                                if (selectedUsers.contains(username)) {
                                  selectedUsers.remove(username);
                                } else {
                                  selectedUsers.add(username);
                                }
                              });
                            },
                          )
                        ],
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                  onTap: () async {
                    String username = widget.userData.currentUser!.username;
                    print('Selected Users: $selectedUsers');
                    if (groupname.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Existing group'),
                            content: const Text(
                                'You need to come up with a name for your new group firstly.'),
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
                    } else if (selectedUsers.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Existing group'),
                            content: const Text(
                                'You need to pick some users in order to create a new group.'),
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
                    } else {
                      selectedUsers.add(username);
                      bool exist =
                          doesGroupExist(selectedUsers, widget.allGroupMembers);
                      exist
                          ? showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Existing group'),
                                  content: const Text(
                                      'It seems that this group already exists. Maybe select differents users'),
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
                            )
                          : await createGroupInFirestore(
                              selectedUsers, groupname);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProfilePage(userData: widget.userData)),
                      );
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5D4FF),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/page-1/images/check.png',
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Done",
                          style: TextStyle(
                            color: Color(0xFFA75FE3),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
