import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/home-page.dart';
import 'package:myapp/page-1/profile-page.dart';
import 'package:myapp/page-1/scanner-page.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';

class NavigationBar1 extends StatefulWidget {
  final UserData userData;
  const NavigationBar1({Key? key, required this.userData}) : super(key: key);

  @override
  _NavigationBar1State createState() => _NavigationBar1State();
}

class _NavigationBar1State extends State<NavigationBar1> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(), // Provide the AppState
      child: Consumer<AppState>(
        builder: (context, appState, _) => Container(
          width: 390,
          height: 70,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFE5D4FF), // Light Purple Background
            borderRadius: BorderRadius.circular(60),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QRViewExample()),
                  );
                },
                child: RoundedContainer(
                  showHello: appState.showText1,
                  imageAsset: 'assets/page-1/images/ControlMenu_QR.png',
                  labelText: 'Scanner',
                ),
              ),
              GestureDetector(
                onTap: () {
                  appState.updateShowText(2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  HomePage(userData: widget.userData)),
                  );
                },
                child: RoundedContainer(
                  showHello: appState.showText2,
                  imageAsset: 'assets/page-1/images/ControlMenu_Home.png',
                  labelText: 'Home',
                ),
              ),
              GestureDetector(
                onTap: () {
                  appState.updateShowText(3);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ProfilePage(userData: widget.userData)),
                  );
                },
                child: RoundedContainer(
                  showHello: appState.showText3,
                  imageAsset: 'assets/page-1/images/ControlMenu_Profile.png',
                  labelText: 'Profile',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final bool showHello;
  final String imageAsset;
  final String labelText;

  const RoundedContainer({
    Key? key,
    required this.showHello,
    required this.imageAsset,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: showHello ? const Color(0xFFD0A2F7) : const Color(0xFFE5D4FF),
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
          if (showHello)
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
