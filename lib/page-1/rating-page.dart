import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/results-page.dart';
import 'package:myapp/page-1/services.dart';

class ImageContainer extends StatefulWidget {
  final String imagePath;
  final Function(bool isTapped) onTapped;

  const ImageContainer(
      {Key? key, required this.imagePath, required this.onTapped})
      : super(key: key);

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          isTapped = !isTapped;
          widget.onTapped(isTapped);
        });
      },
      child: Container(
        width: 350,
        height: 540,
        margin: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(widget.imagePath),
            fit: BoxFit.cover,
          ),
          border: isTapped
              ? Border.all(
                  color: const Color(0xFFA75FE3),
                  width: 5.0,
                )
              : null,
          boxShadow: isTapped
              ? [
                  BoxShadow(
                    color: const Color(0xFFA75FE3).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ]
              : null,
        ),
      ),
    );
  }
}

class RatingPage extends StatefulWidget {
  final UserData userData;
  final List<Map<String, dynamic>> submissions;
  final String groupId;
  const RatingPage(
      {Key? key,
      required this.userData,
      required this.submissions,
      required this.groupId})
      : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  int selectedImageIndex = -1;

  @override
  void initState() {
    super.initState();
    selectedImageIndex = -1;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.submissions);
    return Scaffold(
      body: Container(
        width: 430,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/page-1/images/Background4.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Column(
              children: [
                Text(
                  "Just tap on creations that",
                  style: TextStyle(
                    color: Color(0xFFA75FE3),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                Text(
                  "caught your eye...",
                  style: TextStyle(
                    color: Color(0xFFA75FE3),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 540, // Fixed height for scrolling
              child: PageView(
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    selectedImageIndex = index;
                  });
                },
                children: [
                  for (int i = 0; i < widget.submissions.length; i++)
                    if (widget.submissions[i]['photo'] != '2')
                      if (widget.submissions[i]['username'] !=
                          widget.userData.currentUser?.username)
                        ImageContainer(
                          imagePath: widget.submissions[i]['photo'],
                          onTapped: (isTapped) {
                            // Update the selected image index
                            setState(() {
                              if (isTapped) {
                                selectedImageIndex = i;
                              } else {
                                selectedImageIndex = -1;
                              }
                            });
                          },
                        ),
                ],
              ),
            ),
            const Column(
              children: [
                Text(
                  "..even if you don't know",
                  style: TextStyle(
                    color: Color(0xFFA75FE3),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                Text(
                  "who the creator is!",
                  style: TextStyle(
                    color: Color(0xFFA75FE3),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () async {
                  print(selectedImageIndex);
                  if (selectedImageIndex != -1) {
                    // Increment the rating in Firestore and update the local submissions list
                    await increaseRating(
                      widget.groupId,
                      widget.submissions[selectedImageIndex]['username'],
                      widget.submissions,
                      selectedImageIndex,
                      context,
                    );
                  } else {
                    // Show a dialog if no image is selected
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('No Image Selected'),
                          content: const Text(
                              'Please pick your favorite picture first.'),
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
                    return; // Return to avoid navigating to Results when no image is selected
                  }

                  // Navigate to Results page only when an image is selected
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Results(
                        userData: widget.userData,
                        submissions: widget.submissions,
                        groupId: widget.groupId,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5D4FF),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: const Text(
                    "Ready",
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
            ),
          ],
        ),
      ),
    );
  }
}
