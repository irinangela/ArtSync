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
      child: Container(
        // homepageaW5 (0:779)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // biguserchallenges5xd (0:781)
              left: 31*fem,
              top: 303*fem,
              child: SizedBox(
                width: 556*fem,
                height: 913*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      // privatechallengeC1f (0:784)
                      width: double.infinity,
                      height: 165*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupdolvvyF (9dbAdgUPutqBUsp9VHDoLV)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
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
                                  // challengetitleR9K (I0:784;54891:1447)
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
                                  // d5h36minKEh (I0:784;54891:1448)
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
                            // group43T61 (I0:784;54891:1469)
                            margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                                width: 100*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffa52f2f),
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  // vectorjJR (I0:784;54891:1471)
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 41*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-y3X.png',
                                      width: 36*fem,
                                      height: 41*fem,
                                    ),
                                  ),
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
                      // groupchallngeqMT (0:787)
                      width: double.infinity,
                      height: 165*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupme6dmF7 (9dbAtg3QzVa4HBxsfDme6D)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
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
                                  // challengetitleohb (I0:787;54891:1463)
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
                                  // autogroupnny7ye1 (9dbAy65j2pBEj54fb4Nny7)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // groupname8Wu (I0:787;54891:1464)
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
                                        // d5h36minSnV (I0:787;54891:1465)
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
                            // group42m45 (I0:787;54891:1466)
                            margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                                width: 100*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffa52f2f),
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  // vectoreNm (I0:787;54891:1468)
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 41*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-S33.png',
                                      width: 36*fem,
                                      height: 41*fem,
                                    ),
                                  ),
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
                      // groupchallngemCV (0:790)
                      width: double.infinity,
                      height: 165*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup9onr71T (9dbBHFE8trJ4558nqg9oNR)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
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
                                  // challengetitleaQq (I0:790;54891:1463)
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
                                  // autogroupskyzVgD (9dbBMpvqW68bhn8EcbskYZ)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // groupnameqEH (I0:790;54891:1464)
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
                                        // d5h36minjqT (I0:790;54891:1465)
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
                            // group42G4h (I0:790;54891:1466)
                            margin: EdgeInsets.fromLTRB(0*fem, 32.5*fem, 0*fem, 32.5*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(32*fem, 30*fem, 32*fem, 29*fem),
                                width: 100*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffa52f2f),
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  // vectorYY1 (I0:790;54891:1468)
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 41*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-x57.png',
                                      width: 36*fem,
                                      height: 41*fem,
                                    ),
                                  ),
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
                      // groupchallngeTey (0:794)
                      width: double.infinity,
                      height: 165*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupjn49oiq (9dbBfV65fNZKVJXQKxJN49)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
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
                                  // challengetitleg1w (I0:794;54891:1463)
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
                                  // autogroupuww3Qs3 (9dbBju8PhhAVwBdCFnuWw3)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // groupnamemBo (I0:794;54891:1464)
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
                                        // d5h36minGeM (I0:794;54891:1465)
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
                          TextButton(
                            // group42PU5 (I0:794;54891:1466)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: 100*fem,
                              height: 100*fem,
                              child: Image.asset(
                                'assets/page-1/images/group-42.png',
                                width: 100*fem,
                                height: 100*fem,
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
                      // groupchallngeHZT (0:797)
                      width: double.infinity,
                      height: 165*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupdl9pSSM (9dbC3PdFJ4MrXt8i84DL9P)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
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
                                  // d5h36minXCu (I0:797;54891:1465)
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
                                  // groupname1tm (I0:797;54891:1464)
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
                                  // challengetitleWqX (I0:797;54891:1463)
                                  left: 42*fem,
                                  top: 45*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 257*fem,
                                      height: 32*fem,
                                      child: Text(
                                        'Uncommon emotion',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 26*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            // group42RBo (I0:797;54891:1466)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: SizedBox(
                              width: 100*fem,
                              height: 100*fem,
                              child: Image.asset(
                                'assets/page-1/images/group-42-nv5.png',
                                width: 100*fem,
                                height: 100*fem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangle56Y1X (0:798)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 443*fem,
                  height: 279*fem,
                  child: Image.asset(
                    'assets/page-1/images/rectangle-56-DSq.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // group6TeH (0:799)
              left: 137*fem,
              top: 207*fem,
              child: SizedBox(
                width: 277*fem,
                height: 118*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // levelbeginnerz8R (0:803)
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
                      // autogroup4p4z6hF (9dbCEYyKKYoL3CoRpy4p4Z)
                      padding: EdgeInsets.fromLTRB(23*fem, 24*fem, 25*fem, 21*fem),
                      width: 118*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: const Color(0xffe5d4ff),
                        borderRadius: BorderRadius.circular(59*fem),
                      ),
                      child: Center(
                        // pointscfb (0:802)
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
              // welcometoartsyncryF (0:804)
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
              // menujn9 (0:805)
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
                      // menuitemEU1 (I0:805;54599:180)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 68*fem,
                          height: 62*fem,
                          child: Image.asset(
                            'assets/page-1/images/menu-item-efs.png',
                            width: 68*fem,
                            height: 62*fem,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 13*fem,
                    ),
                    Container(
                      // menuitemWgR (I0:805;54599:183)
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
                            // iconsSKB (I0:805;54599:184)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                            width: 32*fem,
                            height: 32*fem,
                            child: Image.asset(
                              'assets/page-1/images/icons.png',
                              width: 32*fem,
                              height: 32*fem,
                            ),
                          ),
                          Container(
                            // homekKs (I0:805;54599:185)
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
                      // menuitem3Zs (I0:805;54599:186)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 68*fem,
                          height: 62*fem,
                          child: Image.asset(
                            'assets/page-1/images/menu-item.png',
                            width: 68*fem,
                            height: 62*fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // barXzq (I0:806;54601:424)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // 4Uy (I0:806;54601:424;54516:1338)
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
                      // vectoraiD (I0:806;54601:424;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                      width: 23.13*fem,
                      height: 18.26*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-YBK.png',
                        width: 23.13*fem,
                        height: 18.26*fem,
                      ),
                    ),
                    Container(
                      // vectorH6q (I0:806;54601:424;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                      width: 25*fem,
                      height: 15.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-9Mb.png',
                        width: 25*fem,
                        height: 15.98*fem,
                      ),
                    ),
                    Container(
                      // vectoro5B (I0:806;54601:424;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                      width: 25*fem,
                      height: 11.41*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-SCR.png',
                        width: 25*fem,
                        height: 11.41*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // logouP7 (0:807)
              left: 0*fem,
              top: 14.0000688533*fem,
              child: SizedBox(
                width: 254.25*fem,
                height: 243.83*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse49dK7 (I0:807;54812:1015)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 243.83*fem,
                          height: 243.83*fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-49-SL9.png',
                            width: 243.83*fem,
                            height: 243.83*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // artsync92Z (I0:807;54812:1017)
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
                      // challengeyourself37w (I0:807;54812:1018)
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
          ],
        ),
      ),
          );
  }
}