import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/home-page.dart';
import 'package:myapp/page-1/profile-page.dart';
import 'package:myapp/page-1/scanner-page.dart';

class NavigationBar1 extends StatelessWidget {
  final UserData userData;
  final int selectedIndex;

  const NavigationBar1({
    Key? key,
    required this.userData,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 70,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFE5D4FF),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QRViewExample()),
              );
            },
            child: RoundedContainer(
              isSelected: selectedIndex == 1,
              imageAsset: 'assets/page-1/images/ControlMenu_QR.png',
              labelText: 'Scanner',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage(userData: userData)),
              );
            },
            child: RoundedContainer(
              isSelected: selectedIndex == 2,
              imageAsset: 'assets/page-1/images/ControlMenu_Home.png',
              labelText: 'Home',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProfilePage(userData: userData)),
              );
            },
            child: RoundedContainer(
              isSelected: selectedIndex == 3,
              imageAsset: 'assets/page-1/images/ControlMenu_Profile.png',
              labelText: 'Profile',
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final bool isSelected;
  final String imageAsset;
  final String labelText;

  const RoundedContainer({
    Key? key,
    required this.isSelected,
    required this.imageAsset,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFD0A2F7) : const Color(0xFFE5D4FF),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imageAsset,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
          if (isSelected)
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  labelText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
