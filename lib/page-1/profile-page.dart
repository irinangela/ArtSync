import 'package:flutter/material.dart';
import 'package:myapp/page-1/NavigationBar.dart';
import 'package:myapp/page-1/create-a-group.dart';
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

void _showDeleteConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Delete Group'),
        content: const Text('Are you sure you want to delete this group?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Perform the delete operation
              // Add your logic to delete the group here

              // Close the dialog
              Navigator.pop(context);
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
  const GroupContainer({super.key});

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
                const Text(
                  'Headline',
                  style: TextStyle(
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
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image:
                                AssetImage('assets/page-1/images/avatar2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    if (isExpanded)
                      GestureDetector(
                        onTap: () {
                          _showDeleteConfirmationDialog(context);
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
                        print("Circular container tapped");
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
                child: const Text(
                  'Additional text fyutafeyufyuafvv fceybfcievfyc uehfubwsehvuhdehvd j0ej0vjdi i0ejv0ifjnf j0feiihjb 0fehqj0q',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
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
                      MaterialPageRoute(builder: (context) => const Settings()),
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
                const CircularUserContainer(
                  imagePath: 'assets/page-1/images/avatar2.png',
                  username: 'Your Username',
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
                              builder: (context) => const CreateGroup()),
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar2.png',
                    username: 'Username1',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar3.png',
                    username: 'Username2',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar4.png',
                    username: 'Username3',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar5.png',
                    username: 'Username4',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar6.png',
                    username: 'Username5',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar7.png',
                    username: 'Username6',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar8.png',
                    username: 'Username7',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                  CircularUserContainer(
                    imagePath: 'assets/page-1/images/avatar9.png',
                    username: 'Username8',
                    imageSize: 90.0,
                    fontSize: 15.0,
                  ),
                ],
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
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const GroupContainer();
                },
              ),
            ),
            const NavigationBar1(),
          ],
        ),
      ),
    );
  }
}
