import 'package:flutter/material.dart';
import 'package:myapp/page-1/results-page.dart';

class ImageContainer extends StatefulWidget {
  final String imagePath;

  const ImageContainer({Key? key, required this.imagePath}) : super(key: key);

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
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
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
                children: const [
                  ImageContainer(
                    imagePath: 'assets/page-1/images/sky1.png',
                  ),
                  ImageContainer(
                    imagePath: 'assets/page-1/images/sky2.png',
                  ),
                  ImageContainer(
                    imagePath: 'assets/page-1/images/sky3.png',
                  ),
                  ImageContainer(
                    imagePath: 'assets/page-1/images/sky4.png',
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Results()),
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
