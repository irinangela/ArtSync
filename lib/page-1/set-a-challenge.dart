import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/home-page.dart';
import 'package:myapp/page-1/camera.dart';

class DropDown extends StatefulWidget {
  final Function(String) onDurationSelected;

  const DropDown({Key? key, required this.onDurationSelected}) : super(key: key);

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
                  isDropdownOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
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
                buildDropdownItem('1 day'),
                buildDropdownItem('5 days'),
                buildDropdownItem('1 week'),
                buildDropdownItem('2 weeks'),
                buildDropdownItem('1 month'),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildDropdownItem(String item) {
    return ListTile(
      title: Text(item),
      onTap: () {
        setState(() {
          dropdownValue = item;
          widget.onDurationSelected(item); // Notify the parent widget about the selected duration
          isDropdownOpen = false;
        });
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

class SetChallenge extends StatelessWidget {
  final UserData userData;
  final String groupId;

  SetChallenge({
    Key? key,
    required this.userData,
    required this.groupId,
  }) : super(key: key);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  late String selectedDuration;

  @override
  Widget build(BuildContext context) {
    print(groupId);
    return Scaffold(
        body: Stack(
      children: [
        const Positioned.fill(
          child: Background2(),
        ),
        Positioned.fill(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60), // Spacing
                const Text(
                  'Set a Challenge',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20), // Spacing
                Container(
                  width: 300,
                  height: 130,
                  padding: const EdgeInsets.only(top: 14, left: 10, bottom: 20),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 260,
                          //height: 130,
                          child: Text(
                            'Shake your device to get a randomly generated challenge...\n              ...or create your own:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 60), // Spacing
                const Text(
                  'New Challenge’s name:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'e.g. Starry Night',
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
                const SizedBox(height: 20), // Spacing
                const Text(
                  'New Challenge’s description:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20), // Spacing
                Container(
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'e.g. Imagine you just cut your ear off...',
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
                      minLines: 1,
                      maxLines: 10, // Allow up to 10 lines
                    ),
                  ),
                ),

                const SizedBox(height: 20), // Spacing
                const Text(
                  textAlign: TextAlign.center,
                  'Choose the duration of the challenge:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: DropDown(onDurationSelected: (duration) {
                  selectedDuration = duration; 
                })
                ),
                const SizedBox(height: 20),
                
              ],
              
            ),
            
          ),
          
        )
        
        ),
        Positioned(
          bottom: 20,
          left: 250,
          right: 30,
          child: SizedBox(
            width: 250,
            height: 50,
            child: SubmitButton(
              onPressed: () async {
                String title = titleController.text;
                String description = descriptionController.text;
                if (title.isNotEmpty && description.isNotEmpty) {
                    DocumentReference challengeDocRef =
                        await FirebaseFirestore.instance.collection('Challenges').add({
                      'Title': title,
                      'Description': description,
                    });
                    String challengeId = challengeDocRef.id;

                    await FirebaseFirestore.instance.collection('Groups').doc(groupId).update({
                      'ChallengeID': challengeId,
                      'Duration': getDurationValue(selectedDuration),
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(userData: userData)),
                    );
                } else {
                  // Show an error message or handle the case where title or description is empty
                  print('Title and description cannot be empty.');
                }
              },
              text: 'Submit',
              fontSize: 20,
            ),
          ),
        ),
        
      ],    
        )
    
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
