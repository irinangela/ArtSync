import 'package:flutter/material.dart';
import 'package:myapp/page-1/profile-page.dart';
import 'package:myapp/models.dart';
import 'package:provider/provider.dart';

class DropDown extends StatefulWidget {
  final Function(String) onChanged;

    const DropDown({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'Select Frequency';
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
            
          },
          child: Container(
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dropdownValue,
                  style: const TextStyle(fontSize: 18),
                ),
                Icon(
                  isDropdownOpen
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              ],
            ),
          ),
        ),
        if (isDropdownOpen)
          Container(
            margin: const EdgeInsets.only(top: 4),
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                buildDropdownItem('1 day',1),
                buildDropdownItem('5 days',5),
                buildDropdownItem('1 week',7),
                buildDropdownItem('2 weeks',14),
                buildDropdownItem('1 month',30),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildDropdownItem(String item, int value) {
    return ListTile(
      title: Text(item),
      onTap: () {
        setState(() {
          dropdownValue = item;
          isDropdownOpen = false;
        });
        widget.onChanged(item);
      },
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
      child: Text(text, style: TextStyle(fontSize: fontSize)),
    );
  }
}

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

class AvatarUser extends StatefulWidget {
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
  _AvatarUserState createState() => _AvatarUserState();
}

class _AvatarUserState extends State<AvatarUser> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.isSelected ? Colors.purple : Colors.transparent,
                width: 4,
              ),
            ),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(widget.avatarImagePath),
              backgroundColor: Colors.transparent,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class MySettings extends StatefulWidget {
  final UserData userData;
  const MySettings({Key? key, required this.userData}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<MySettings> {
  late String selectedAvatar;
  late int selectedChallengeDuration;

  @override
  void initState() {
    super.initState();
    selectedAvatar = '';
    selectedChallengeDuration = 5;
  }

  @override
  Widget build(BuildContext context) {
    print('Username: ${widget.userData.currentUser?.username}');
    final List<String> avatars = List.generate(
        23, (index) => 'assets/page-1/images/avatar${index + 1}.png');

    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: Background2(),
          ),
          Center(
            child: Consumer<UserData>(
              builder: (context, userData, _) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 394,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 398,
                      height: 51,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF1EAFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Change username',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
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
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'New Username',
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
                    const SizedBox(height: 20),
                    Container(
                      width: 398,
                      height: 51,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF1EAFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Change avatar',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
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
                                  selectedAvatar = avatars[index];
                                });
                              },
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 398,
                      height: 51,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF1EAFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Change Private Challenges’ frequency',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                        child: DropDown(
                        onChanged: (item) {
                          selectedChallengeDuration = getDurationValue(item);
                          Provider.of<UserData>(context, listen: false)
                              .updateChallengeDuration(selectedChallengeDuration);
                              print('Selected Challenge Duration: $selectedChallengeDuration');
                            print('Selected Challenge Duration (string): $item');
                        },
                      ),
                      
                    ),
                  ],
                  
                );
              }
            ),
          ),
          Positioned(
            top: 750,
            left: 220,
            child: SizedBox(
              width: 160,
              height: 50,
              child: SubmitButton(
              onPressed: () async {
                          print('Hooray! Changes saved 1.');
                          // Get the user data from the provider
                          UserData userData = Provider.of<UserData>(context, listen: false);
                          print('Hooray! Changes saved 2.');
                          // Update the challenge duration in the user data
                          //userData.updateChallengeDuration(selectedChallengeDuration);
                          print('Hooray! Changes saved 3.');
                          // Update the challenge duration in Firestore
                          print('Username: ${widget.userData.currentUser?.username}');
                          await userData.updateChallengeDurationInFirestore(widget.userData,selectedChallengeDuration);
                          print('Hooray! Changes saved 4.');
                          // Navigate to the profile page or perform other actions
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(userData: widget.userData),
                            ),
                          );
                        },
                  text: 'Save Changes',
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  int getDurationValue(String item) {
    switch (item) {
      case '1 day':
        return 1;
      case '5 days':
        return 5;
      case '1 week':
        return 7;
      case '2 weeks':
        return 14;
      case '1 month':
        return 30;
      default:
        return 5; 
    }
  }

}