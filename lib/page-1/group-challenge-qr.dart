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
      child: TextButton(
        // groupchallengeqrsQM (0:948)
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
                // frame40Zny (0:949)
                left: 58*fem,
                top: 467*fem,
                child: SizedBox(
                  width: 384*fem,
                  height: 306*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupqyy9Uuw (9dbLT9cX5H5R3XhJEPQYY9)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70*fem, 0*fem),
                        width: double.infinity,
                        height: 157*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // avatarinchallengeoSR (0:950)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 74*fem, 0*fem),
                              width: 120*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // avatarsKvZ (I0:950;54646:468)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                    padding: EdgeInsets.fromLTRB(84*fem, 88*fem, 4*fem, 0*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xffffe5b8),
                                      borderRadius: BorderRadius.circular(60*fem),
                                      image: const DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/page-1/images/ellipse-28-bg-4Hf.png',
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      // statesofavatarDW9 (I0:950;54646:469)
                                      alignment: Alignment.bottomRight,
                                      child: SizedBox(
                                        width: 32*fem,
                                        height: 32*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/states-of-avatar-dXX.png',
                                          width: 32*fem,
                                          height: 32*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // usernameL4y (I0:950;54646:470)
                                    '@username ',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              // avatarinchallengeFSq (0:951)
                              width: 120*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // avatarsak1 (I0:951;54646:459)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                    padding: EdgeInsets.fromLTRB(84*fem, 88*fem, 4*fem, 0*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xfffff2b9),
                                      borderRadius: BorderRadius.circular(60*fem),
                                      image: const DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/page-1/images/ellipse-27-bg.png',
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      // statesofavatarUqP (I0:951;54646:461)
                                      alignment: Alignment.bottomRight,
                                      child: SizedBox(
                                        width: 32*fem,
                                        height: 32*fem,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Image.asset(
                                            'assets/page-1/images/states-of-avatar-mUM.png',
                                            width: 32*fem,
                                            height: 32*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // usernamezHw (I0:951;54646:464)
                                    '@username ',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 41*fem,
                      ),
                      Container(
                        // autogroupu2id77f (9dbLdtocgUSUandtKaU2iD)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70*fem, 0*fem),
                        width: double.infinity,
                        height: 157*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // avatarinchallengeqJZ (0:953)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 74*fem, 0*fem),
                              width: 120*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // avatarsLWD (I0:953;54646:459)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                    padding: EdgeInsets.fromLTRB(84*fem, 88*fem, 4*fem, 0*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xfff6d3bd),
                                      borderRadius: BorderRadius.circular(60*fem),
                                      image: const DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/page-1/images/ellipse-24-bg-dkM.png',
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      // statesofavatarELh (I0:953;54646:461)
                                      alignment: Alignment.bottomRight,
                                      child: SizedBox(
                                        width: 32*fem,
                                        height: 32*fem,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Image.asset(
                                            'assets/page-1/images/states-of-avatar-6tZ.png',
                                            width: 32*fem,
                                            height: 32*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // usernamewF7 (I0:953;54646:464)
                                    '@username ',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              // avatarinchallengeH45 (0:954)
                              width: 120*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // avatars2XT (I0:954;54646:468)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                    padding: EdgeInsets.fromLTRB(84*fem, 88*fem, 4*fem, 0*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xffe0b8ff),
                                      borderRadius: BorderRadius.circular(60*fem),
                                      image: const DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/page-1/images/ellipse-32-bg-W65.png',
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      // statesofavatarKmT (I0:954;54646:469)
                                      alignment: Alignment.bottomRight,
                                      child: SizedBox(
                                        width: 32*fem,
                                        height: 32*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/states-of-avatar-wmT.png',
                                          width: 32*fem,
                                          height: 32*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // usernamerWV (I0:954;54646:470)
                                    '@username ',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 41*fem,
                      ),
                      SizedBox(
                        // avatarinchallengen9F (0:952)
                        width: 120*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // avatars8iu (I0:952;54646:459)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                              padding: EdgeInsets.fromLTRB(84*fem, 88*fem, 4*fem, 0*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xfffff2b9),
                                borderRadius: BorderRadius.circular(60*fem),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-12-bg-jmT.png',
                                  ),
                                ),
                              ),
                              child: Align(
                                // statesofavatar23b (I0:952;54646:461)
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  width: 32*fem,
                                  height: 32*fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Image.asset(
                                      'assets/page-1/images/states-of-avatar-Wfj.png',
                                      width: 32*fem,
                                      height: 32*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // username8cR (I0:952;54646:464)
                              '@username ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
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
                // seeyourfriendsprogressheresa1 (0:956)
                left: 64*fem,
                top: 421*fem,
                child: Align(
                  child: SizedBox(
                    width: 301*fem,
                    height: 25*fem,
                    child: Text(
                      'See your friends’ progress here:',
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
                // backbuttonm9b (0:957)
                left: 20*fem,
                top: 861*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(12*fem, 7*fem, 19*fem, 7*fem),
                  width: 123*fem,
                  height: 44*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffe5d4ff),
                    borderRadius: BorderRadius.circular(29*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // vectorq9T (I0:957;54709:1005)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.53*fem, 0.37*fem),
                        width: 19.47*fem,
                        height: 15.63*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-XTX.png',
                          width: 19.47*fem,
                          height: 15.63*fem,
                        ),
                      ),
                      Text(
                        // backYZf (I0:957;54709:1006)
                        'Back',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xffa75fe3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group31gQy (0:958)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 566*fem,
                    height: 383*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-31-inu.png',
                      width: 566*fem,
                      height: 383*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // submithereyus (0:963)
                left: 157.5*fem,
                top: 882.5*fem,
                child: Align(
                  child: SizedBox(
                    width: 115*fem,
                    height: 25*fem,
                    child: Text(
                      'Submit here',
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
                // circlebuttong3b (0:964)
                left: 170*fem,
                top: 785*fem,
                child: Align(
                  child: SizedBox(
                    width: 90*fem,
                    height: 90*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/circle-button-xY9.png',
                        width: 90*fem,
                        height: 90*fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // frame31ADf (0:965)
                left: 10*fem,
                top: 22*fem,
                child: SizedBox(
                  width: 404*fem,
                  height: 366*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // group38HJH (0:966)
                        left: 335*fem,
                        top: 69*fem,
                        child: Align(
                          child: SizedBox(
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-38-qgV.png',
                              width: 50*fem,
                              height: 50*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // barBeZ (I0:969;54601:424)
                        left: 0*fem,
                        top: 0*fem,
                        child: SizedBox(
                          width: 398*fem,
                          height: 25*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // Vv9 (I0:969;54601:424;54516:1338)
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
                                // vectorDbF (I0:969;54601:424;54516:1337)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                                width: 23.13*fem,
                                height: 18.26*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-dGu.png',
                                  width: 23.13*fem,
                                  height: 18.26*fem,
                                ),
                              ),
                              Container(
                                // vector8iD (I0:969;54601:424;54516:1336)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                                width: 25*fem,
                                height: 15.98*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-6Ad.png',
                                  width: 25*fem,
                                  height: 15.98*fem,
                                ),
                              ),
                              Container(
                                // vectorTEh (I0:969;54601:424;54516:1335)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                                width: 25*fem,
                                height: 11.41*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-5Jq.png',
                                  width: 25*fem,
                                  height: 11.41*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // earlymorningsaaD (0:971)
                        left: 94*fem,
                        top: 75*fem,
                        child: Align(
                          child: SizedBox(
                            width: 221*fem,
                            height: 37*fem,
                            child: Text(
                              'Early Mornings',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 30*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // frame27FgM (0:972)
                        left: 6*fem,
                        top: 183*fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15.5*fem, 31.5*fem, 15.5*fem, 29.5*fem),
                          width: 398*fem,
                          height: 183*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xffd0a2f7)),
                            color: const Color(0x30e5d4ff),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x4cf1eaff),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2.5*fem,
                              ),
                            ],
                          ),
                          child: Center(
                            // amandyouarealreadyawakegetting (0:973)
                            child: SizedBox(
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 367*fem,
                                ),
                                child: Text(
                                  '5 AM and you are already awake,\ngetting ready for a weekend away with\nyour loved ones. As you’re leaving,\nthe sky catches your eye.\nWhat do you see?',
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
                      ),
                      Positioned(
                        // line7wxV (0:974)
                        left: 6*fem,
                        top: 148*fem,
                        child: Align(
                          child: SizedBox(
                            width: 398*fem,
                            height: 0.5*fem,
                            child: Container(
                              decoration: const BoxDecoration (
                                color: Color(0xff000000),
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
                // backbuttonUBj (0:975)
                left: 287*fem,
                top: 861*fem,
                child: Container(
                  width: 123*fem,
                  height: 44*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffe5d4ff),
                    borderRadius: BorderRadius.circular(29*fem),
                  ),
                ),
              ),
              Positioned(
                // ratenCR (0:976)
                left: 321*fem,
                top: 869*fem,
                child: Align(
                  child: SizedBox(
                    width: 53*fem,
                    height: 30*fem,
                    child: Text(
                      'Rate',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xffa75fe3),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle615BX (0:977)
                left: 0*fem,
                top: 0*fem,
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
                // qrcodepopupACy (0:978)
                left: 40*fem,
                top: 242*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(47*fem, 36*fem, 47*fem, 43*fem),
                  width: 350*fem,
                  height: 450*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: const Color(0xcca75fe3)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur (
                        sigmaX: 2*fem,
                        sigmaY: 2*fem,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // scanthisqrcodetoenterthegroupC (I0:978;54579:497)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                            constraints: BoxConstraints (
                              maxWidth: 254*fem,
                            ),
                            child: Text(
                              'Scan this QR code to enter the group',
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
                          SizedBox(
                            // autogroupm9zs6F3 (9dbMRCqT477qMNsNXaM9Zs)
                            width: 256*fem,
                            height: 278*fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-m9zs.png',
                              width: 256*fem,
                              height: 278*fem,
                            ),
                          ),
                          Text(
                            // schoolartclasspgq (I0:978;54579:495)
                            '@SchoolArtClass',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
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
          );
  }
}