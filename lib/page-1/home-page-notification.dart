import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // homepagenotificationuu3 (0:1340)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 932*fem,
          decoration: const BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // smalluserchallenges1hB (0:1341)
                left: 0*fem,
                top: 266*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(100*fem, 69*fem, 0*fem, 0*fem),
                  width: 512*fem,
                  height: 556*fem,
                  child: SizedBox(
                    // biguserchallengesWP3 (0:1342)
                    width: 616*fem,
                    height: 913*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // privatechallengeE49 (0:1345)
                          width: double.infinity,
                          height: 165*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupetbxy1j (9dbfQ73PBnGDNfizbReTbX)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(42*fem, 45*fem, 27*fem, 18*fem),
                                width: 376*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xff7b33b7),
                                  borderRadius: BorderRadius.circular(40*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // challengetitleFjw (I0:1345;54891:1447)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 47*fem),
                                      child: Text(
                                        'Cozy by the fireplace',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 24*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // d5h36minkgh (I0:1345;54891:1448)
                                      '2d 5h 36min',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: const Color(0xffd0a2f7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group43Hgd (I0:1345;54891:1469)
                                margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                                padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                                width: 100*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffa52f2f),
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  // vectoravd (I0:1345;54891:1471)
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 41*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-7ah.png',
                                      width: 36*fem,
                                      height: 41*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22*fem,
                        ),
                        SizedBox(
                          // groupchallngeHKF (0:1348)
                          width: double.infinity,
                          height: 165*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupnigzd8D (9dbfdvygHxPXsCe9qkNiGZ)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(30*fem, 45*fem, 21*fem, 18*fem),
                                width: 376*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd0a2f7),
                                  borderRadius: BorderRadius.circular(40*fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // challengetitle5W1 (I0:1348;54891:1463)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 110*fem, 37*fem),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 26*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2102272327*ffem/fem,
                                            color: const Color(0xffffffff),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Early mornings\n',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\n',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // autogroupygj5FxD (9dbfiRrBcjcPuVgmh8YGJ5)
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // groupnamebmB (I0:1348;54891:1464)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 108*fem, 8*fem),
                                            child: Text(
                                              'Art Class ',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 20*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xffa75fe3),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // d5h36min7jX (I0:1348;54891:1465)
                                            margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
                                            child: Text(
                                              '15d 2h 12min',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 20*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xff9747ff),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group42DnZ (I0:1348;54891:1466)
                                margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                                padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                                width: 100*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffa52f2f),
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  // vectorjF7 (I0:1348;54891:1468)
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 41*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-1u3.png',
                                      width: 36*fem,
                                      height: 41*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22*fem,
                        ),
                        SizedBox(
                          // groupchallnge3mb (0:1351)
                          width: double.infinity,
                          height: 165*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupffb7PqT (9dbg35ymBXRJoyRrV1ffb7)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(30*fem, 45*fem, 24*fem, 18*fem),
                                width: 376*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd0a2f7),
                                  borderRadius: BorderRadius.circular(40*fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // challengetitle39K (I0:1351;54891:1463)
                                      margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 37*fem),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 26*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2102272327*ffem/fem,
                                            color: const Color(0xffffffff),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'First drawing of the year\n',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\n',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroupbd29AdF (9dbg7FXVNUBSUchAeDbd29)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                      width: 319*fem,
                                      height: 33*fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // d5h36mingrV (I0:1351;54891:1465)
                                            left: 200*fem,
                                            top: 8*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 119*fem,
                                                height: 25*fem,
                                                child: Text(
                                                  '2d 5h 36min',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: const Color(0xffac68e6),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // groupnameyqb (I0:1351;54891:1464)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 207*fem,
                                                height: 25*fem,
                                                child: Text(
                                                  'Inc Harmony Colletive',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2125*ffem/fem,
                                                    color: const Color(0xffa75fe3),
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
                              Container(
                                // group42UnM (I0:1351;54891:1466)
                                margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                                padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                                width: 100*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffa52f2f),
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  // vectorBwf (I0:1351;54891:1468)
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 41*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-rJV.png',
                                      width: 36*fem,
                                      height: 41*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22*fem,
                        ),
                        SizedBox(
                          // groupchallnge7aR (0:1355)
                          width: double.infinity,
                          height: 165*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup7svp3U5 (9dbgQKsNYYJP7FUYtm7SVP)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                                width: 376*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd0a2f7),
                                  borderRadius: BorderRadius.circular(40*fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // d5h36minv25 (I0:1355;54891:1465)
                                      left: 230*fem,
                                      top: 122*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 115*fem,
                                          height: 25*fem,
                                          child: Text(
                                            '13d 7h 2min',
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 20*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125*ffem/fem,
                                              color: const Color(0xff9747ff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // groupnameCkH (I0:1355;54891:1464)
                                      left: 30*fem,
                                      top: 114*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 126*fem,
                                          height: 25*fem,
                                          child: Text(
                                            'Artistry Allies',
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 20*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125*ffem/fem,
                                              color: const Color(0xffa75fe3),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // challengetitleuub (I0:1355;54891:1463)
                                      left: 42*fem,
                                      top: 45*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 195*fem,
                                          height: 32*fem,
                                          child: RichText(
                                            text: TextSpan(
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2102272327*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'Family member\n',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 26*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2125*ffem/fem,
                                                    color: const Color(0xffffffff),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\n',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 26*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2125*ffem/fem,
                                                    color: const Color(0xffffffff),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // group42Tpd (I0:1355;54891:1466)
                                width: 100*fem,
                                height: 100*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-42-W3s.png',
                                  width: 100*fem,
                                  height: 100*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22*fem,
                        ),
                        SizedBox(
                          // groupchallngeyny (0:1358)
                          width: double.infinity,
                          height: 165*fem,
                          child: Container(
                            // autogroupn5ymwjo (9dbgfV6nC4Gd6PWvunn5YM)
                            width: 376*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0xffd0a2f7),
                              borderRadius: BorderRadius.circular(40*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  // d5h36minfA1 (I0:1358;54891:1465)
                                  left: 230*fem,
                                  top: 122*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 113*fem,
                                      height: 25*fem,
                                      child: Text(
                                        '10d 0h 1min',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: const Color(0xff9747ff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupnamemTw (I0:1358;54891:1464)
                                  left: 30*fem,
                                  top: 114*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 194*fem,
                                      height: 25*fem,
                                      child: Text(
                                        'Canvas Companions',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: const Color(0xffa75fe3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // challengetitle5Ud (I0:1358;54891:1463)
                                  left: 42*fem,
                                  top: 45*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 193*fem,
                                      height: 32*fem,
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 26*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2102272327*ffem/fem,
                                            color: const Color(0xffffffff),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Challenge Title\n',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\n',
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 26*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2125*ffem/fem,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle56SCh (0:1359)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 443*fem,
                    height: 279*fem,
                    child: Image.asset(
                      'assets/page-1/images/rectangle-56-R7P.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                // group6kUH (0:1360)
                left: 137*fem,
                top: 207*fem,
                child: SizedBox(
                  width: 277*fem,
                  height: 118*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // levelbeginnertKb (0:1364)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 35*fem),
                        child: Text(
                          'Level: Beginner ',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xff7b33b7),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupjkupCbB (9dbgrtwS4vZ9Nx28PLJkuP)
                        padding: EdgeInsets.fromLTRB(23*fem, 24*fem, 25*fem, 21*fem),
                        width: 118*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffe5d4ff),
                          borderRadius: BorderRadius.circular(59*fem),
                        ),
                        child: Center(
                          // pointsvGH (0:1363)
                          child: SizedBox(
                            child: Container(
                              constraints: BoxConstraints (
                                maxWidth: 70*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2102272511*ffem/fem,
                                    color: const Color(0xff7b33b7),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '342\n',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 36*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2125*ffem/fem,
                                        color: const Color(0xff7b33b7),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'points',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 24*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2125*ffem/fem,
                                        color: const Color(0xff7b33b7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // welcometoartsyncNnV (0:1365)
                left: 261*fem,
                top: 68*fem,
                child: Align(
                  child: SizedBox(
                    width: 136*fem,
                    height: 59*fem,
                    child: Text(
                      'Welcome to\n      ArtSync! ',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff7b33b7),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // menuGcy (0:1366)
                left: 54*fem,
                top: 823*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(6*fem, 6*fem, 6*fem, 6*fem),
                  width: 323*fem,
                  height: 77*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffe5d4ff),
                    borderRadius: BorderRadius.circular(60*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // menuitemmJq (I0:1366;54599:180)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                        width: 68*fem,
                        height: 62*fem,
                        child: Image.asset(
                          'assets/page-1/images/menu-item-i3B.png',
                          width: 68*fem,
                          height: 62*fem,
                        ),
                      ),
                      SizedBox(
                        width: 13*fem,
                      ),
                      Container(
                        // menuitems6y (I0:1366;54599:183)
                        padding: EdgeInsets.fromLTRB(18*fem, 15*fem, 18*fem, 18*fem),
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffd0a2f7),
                          borderRadius: BorderRadius.circular(32*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // iconsnDw (I0:1366;54599:184)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                              width: 32*fem,
                              height: 32*fem,
                              child: Image.asset(
                                'assets/page-1/images/icons-zcZ.png',
                                width: 32*fem,
                                height: 32*fem,
                              ),
                            ),
                            Container(
                              // home7GD (I0:1366;54599:185)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                              child: Text(
                                'Home',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 13*fem,
                      ),
                      Container(
                        // menuitemQFK (I0:1366;54599:186)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                        width: 68*fem,
                        height: 62*fem,
                        child: Image.asset(
                          'assets/page-1/images/menu-item-WSm.png',
                          width: 68*fem,
                          height: 62*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // barvDf (I0:1367;54601:424)
                left: 10*fem,
                top: 22*fem,
                child: SizedBox(
                  width: 398*fem,
                  height: 25*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // SSu (I0:1367;54601:424;54516:1338)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 259*fem, 0*fem),
                        child: Text(
                          ' 8:35',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xff3c3c3c),
                          ),
                        ),
                      ),
                      Container(
                        // vectorNLZ (I0:1367;54601:424;54516:1337)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                        width: 23.13*fem,
                        height: 18.26*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-PLu.png',
                          width: 23.13*fem,
                          height: 18.26*fem,
                        ),
                      ),
                      Container(
                        // vectorHTX (I0:1367;54601:424;54516:1336)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                        width: 25*fem,
                        height: 15.98*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-vk9.png',
                          width: 25*fem,
                          height: 15.98*fem,
                        ),
                      ),
                      Container(
                        // vectorC4h (I0:1367;54601:424;54516:1335)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                        width: 25*fem,
                        height: 11.41*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-NeM.png',
                          width: 25*fem,
                          height: 11.41*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // logoX6y (0:1368)
                left: 0*fem,
                top: 14.0000078181*fem,
                child: SizedBox(
                  width: 254.25*fem,
                  height: 243.83*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // ellipse49FHs (I0:1368;54812:1015)
                        left: 0*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 243.83*fem,
                            height: 243.83*fem,
                            child: Image.asset(
                              'assets/page-1/images/ellipse-49-kG9.png',
                              width: 243.83*fem,
                              height: 243.83*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // artsyncxTB (I0:1368;54812:1017)
                        left: 65.3389892578*fem,
                        top: 58.6798627873*fem,
                        child: Align(
                          child: SizedBox(
                            width: 146*fem,
                            height: 57*fem,
                            child: Text(
                              'ArtSync',
                              style: SafeGoogleFont (
                                'Kdam Thmor',
                                fontSize: 45*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // challengeyourself4FK (I0:1368;54812:1018)
                        left: 37.2463378906*fem,
                        top: 122.2463300725*fem,
                        child: Align(
                          child: SizedBox(
                            width: 193*fem,
                            height: 32*fem,
                            child: Text(
                              'Challenge yourself',
                              style: SafeGoogleFont (
                                'Kdam Thmor',
                                fontSize: 25*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // popupmessageMVK (0:1369)
                left: 1*fem,
                top: 1*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(18.5*fem, 53*fem, 18.5*fem, 26*fem),
                  width: 430*fem,
                  height: 135*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xffd0a2f7)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.only (
                      bottomRight: Radius.circular(50*fem),
                      bottomLeft: Radius.circular(50*fem),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x4c7b33b7),
                        offset: Offset(0*fem, 4*fem),
                        blurRadius: 2.5*fem,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // anewchallengeiswaitingforyouoc (I0:1369;54579:197)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                        child: Text(
                          'A new challenge is waiting for you!',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // vectoruQM (I0:1369;54579:198)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                        width: 53*fem,
                        height: 3*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-kbj.png',
                          width: 53*fem,
                          height: 3*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}