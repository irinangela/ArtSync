import 'package:flutter/material.dart';
import 'dart:ui';
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
      child: Container(
        // homepagedeletepopuprDf (0:808)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // bigframe19yT (0:812)
              left: 0*fem,
              top: 345*fem,
              child: SizedBox(
                width: 706*fem,
                height: 1107*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // privatechallenge4Kj (0:813)
                      left: 27*fem,
                      top: 0*fem,
                      child: SizedBox(
                        width: 616*fem,
                        height: 165*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupy3rraJ5 (9dbCpcptPERXi4RNQWY3rR)
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
                                    // challengetitleGAu (I0:813;54891:1447)
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
                                    // d5h36minAXB (I0:813;54891:1448)
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
                              // group43txy (I0:813;54891:1469)
                              margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                              padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                              width: 100*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xffa52f2f),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                // vectorCCy (I0:813;54891:1471)
                                child: SizedBox(
                                  width: 36*fem,
                                  height: 41*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-RTF.png',
                                    width: 36*fem,
                                    height: 41*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle61v8y (0:814)
                      left: 0*fem,
                      top: 175*fem,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur (
                            sigmaX: 10*fem,
                            sigmaY: 10*fem,
                          ),
                          child: Align(
                            child: SizedBox(
                              width: 430*fem,
                              height: 932*fem,
                              child: Container(
                                decoration: const BoxDecoration (
                                  color: Color(0x75f2efef),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // groupchallngeazD (0:817)
                      left: 27*fem,
                      top: 187*fem,
                      child: SizedBox(
                        width: 616*fem,
                        height: 165*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupvu7wJvD (9dbD4n5xdF1aaF7qM1Vu7w)
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
                                    // challengetitleAhX (I0:817;54891:1463)
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
                                    // autogrouprryy4gR (9dbD8wdgpBmiEtP9WDRrYy)
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // groupnameoe1 (I0:817;54891:1464)
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
                                          // d5h36min8RP (I0:817;54891:1465)
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
                              // group423oF (I0:817;54891:1466)
                              margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                              padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                              width: 100*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xffa52f2f),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                // vectorZFo (I0:817;54891:1468)
                                child: SizedBox(
                                  width: 36*fem,
                                  height: 41*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-1xM.png',
                                    width: 36*fem,
                                    height: 41*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // groupchallngeVfF (0:820)
                      left: 27*fem,
                      top: 374*fem,
                      child: SizedBox(
                        width: 616*fem,
                        height: 165*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup9gh7ovq (9dbDRbpbZxpEuTSQ939gH7)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(30*fem, 45*fem, 24*fem, 2*fem),
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
                                    // challengetitle4bs (I0:820;54891:1463)
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
                                    // autogrouphdy3PGm (9dbDVMDMLcVxc2yagXHdy3)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // groupnameipq (I0:820;54891:1464)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
                                          constraints: BoxConstraints (
                                            maxWidth: 120*fem,
                                          ),
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
                                        Container(
                                          // d5h36minRjF (I0:820;54891:1465)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group42wxV (I0:820;54891:1466)
                              margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                              padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                              width: 100*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xffa52f2f),
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                // vectorFCV (I0:820;54891:1468)
                                child: SizedBox(
                                  width: 36*fem,
                                  height: 41*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-EEm.png',
                                    width: 36*fem,
                                    height: 41*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // groupchallngeNY1 (0:824)
                      left: 27*fem,
                      top: 561*fem,
                      child: SizedBox(
                        width: 616*fem,
                        height: 165*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupq3mstWM (9dbDoB2z4pA3aPGQExq3ms)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(30*fem, 45*fem, 31*fem, 18*fem),
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
                                    // challengetitlekYZ (I0:824;54891:1463)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 96*fem, 37*fem),
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
                                  SizedBox(
                                    // autogroup5om3upm (9dbDs668QP58TnhEdY5om3)
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // groupnameG9X (I0:824;54891:1464)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 74*fem, 8*fem),
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
                                        Container(
                                          // d5h36minndf (I0:824;54891:1465)
                                          margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              // group42Vny (I0:824;54891:1466)
                              width: 100*fem,
                              height: 100*fem,
                              child: Image.asset(
                                'assets/page-1/images/group-42-XjX.png',
                                width: 100*fem,
                                height: 100*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // groupchallngeDiy (0:827)
                      left: 27*fem,
                      top: 748*fem,
                      child: SizedBox(
                        width: 616*fem,
                        height: 165*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupn2do9cd (9dbE9q7EScjLimhKBuN2do)
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
                                    // d5h36minEty (I0:827;54891:1465)
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
                                    // groupnamejaq (I0:827;54891:1464)
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
                                    // challengetitledgD (I0:827;54891:1463)
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
                            SizedBox(
                              // group42xc1 (I0:827;54891:1466)
                              width: 100*fem,
                              height: 100*fem,
                              child: Image.asset(
                                'assets/page-1/images/group-42-UUy.png',
                                width: 100*fem,
                                height: 100*fem,
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
            Positioned(
              // rectangle56hJh (0:828)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 443*fem,
                  height: 279*fem,
                  child: Image.asset(
                    'assets/page-1/images/rectangle-56.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // group6cAm (0:829)
              left: 137*fem,
              top: 207*fem,
              child: SizedBox(
                width: 277*fem,
                height: 118*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // levelbeginnerLMf (0:833)
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
                      // autogroupthzq3ms (9dbEMEwtKV1s1LCWfSthzq)
                      padding: EdgeInsets.fromLTRB(23*fem, 24*fem, 25*fem, 21*fem),
                      width: 118*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: const Color(0xffe5d4ff),
                        borderRadius: BorderRadius.circular(59*fem),
                      ),
                      child: Center(
                        // pointsy9j (0:832)
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
              // welcometoartsync3Yu (0:834)
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
              // menuwuB (0:835)
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
                      // menuitemEdP (I0:835;54599:180)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      width: 68*fem,
                      height: 62*fem,
                      child: Image.asset(
                        'assets/page-1/images/menu-item-HUu.png',
                        width: 68*fem,
                        height: 62*fem,
                      ),
                    ),
                    SizedBox(
                      width: 13*fem,
                    ),
                    Container(
                      // menuitemwXo (I0:835;54599:183)
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
                            // iconsfCu (I0:835;54599:184)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                            width: 32*fem,
                            height: 32*fem,
                            child: Image.asset(
                              'assets/page-1/images/icons-pjj.png',
                              width: 32*fem,
                              height: 32*fem,
                            ),
                          ),
                          Container(
                            // homemmj (I0:835;54599:185)
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
                      // menuitemTuT (I0:835;54599:186)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      width: 68*fem,
                      height: 62*fem,
                      child: Image.asset(
                        'assets/page-1/images/menu-item-FVj.png',
                        width: 68*fem,
                        height: 62*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // barBqT (I0:836;54601:424)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // WMw (I0:836;54601:424;54516:1338)
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
                      // vectorasb (I0:836;54601:424;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                      width: 23.13*fem,
                      height: 18.26*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-4Cq.png',
                        width: 23.13*fem,
                        height: 18.26*fem,
                      ),
                    ),
                    Container(
                      // vectorHX7 (I0:836;54601:424;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                      width: 25*fem,
                      height: 15.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-eJM.png',
                        width: 25*fem,
                        height: 15.98*fem,
                      ),
                    ),
                    Container(
                      // vectornyf (I0:836;54601:424;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                      width: 25*fem,
                      height: 11.41*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-hE9.png',
                        width: 25*fem,
                        height: 11.41*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // logoi6d (0:837)
              left: 0*fem,
              top: 14.0000688533*fem,
              child: SizedBox(
                width: 254.25*fem,
                height: 243.83*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse492t1 (I0:837;54812:1015)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 243.83*fem,
                          height: 243.83*fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-49.png',
                            width: 243.83*fem,
                            height: 243.83*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // artsyncYLZ (I0:837;54812:1017)
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
                      // challengeyourselfDhb (I0:837;54812:1018)
                      left: 37.2463989258*fem,
                      top: 122.2462690373*fem,
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
              // blurreduKX (0:838)
              left: 0*fem,
              top: 1*fem,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur (
                    sigmaX: 10*fem,
                    sigmaY: 10*fem,
                  ),
                  child: Align(
                    child: SizedBox(
                      width: 430*fem,
                      height: 932*fem,
                      child: Container(
                        decoration: const BoxDecoration (
                          color: Color(0x75f2efef),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // popupwindowzrm (0:839)
              left: 45*fem,
              top: 383*fem,
              child: SizedBox(
                width: 342*fem,
                height: 166*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle52Wq7 (I0:839;54579:189)
                      left: 5*fem,
                      top: 0*fem,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur (
                            sigmaX: 2*fem,
                            sigmaY: 2*fem,
                          ),
                          child: Align(
                            child: SizedBox(
                              width: 326*fem,
                              height: 166*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(15*fem),
                                  border: Border.all(color: const Color(0xcca75fe3)),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // areyousureyouwanttodeletethisg (I0:839;54579:192)
                      left: 14.5*fem,
                      top: 35*fem,
                      child: Align(
                        child: SizedBox(
                          width: 306*fem,
                          height: 49*fem,
                          child: Text(
                            'Are you sure you want to delete this group challenge?',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame11SsB (I0:839;54579:202)
                      left: 41*fem,
                      top: 116*fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 86*fem,
                          height: 44*fem,
                          child: Center(
                            child: Text(
                              'Cancel',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame12ho7 (I0:839;54579:207)
                      left: 209*fem,
                      top: 116*fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 84*fem,
                          height: 44*fem,
                          child: Center(
                            child: Text(
                              'Delete',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
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
          ],
        ),
      ),
          );
  }
}