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
        // groupchallengedCm (0:915)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame96Lcy (0:916)
              left: 36*fem,
              top: 459*fem,
              child: SizedBox(
                width: 339*fem,
                height: 320*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroup53nr3XP (9dbJz7DtLkwSG1Zgfr53nR)
                      margin: EdgeInsets.fromLTRB(8.5*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 164*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouppbj9N3s (9dbK5SQLW8K8ES4ZkfpbJ9)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54.5*fem, 0*fem),
                            width: 153.5*fem,
                            height: double.infinity,
                            child: SizedBox(
                              // newuserinchallenge6Vf (0:926)
                              width: 151*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // avatarsdVb (I0:926;54832:1387)
                                    margin: EdgeInsets.fromLTRB(12.5*fem, 0*fem, 18.5*fem, 19*fem),
                                    padding: EdgeInsets.fromLTRB(88*fem, 88*fem, 0*fem, 0*fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration (
                                      color: const Color(0xfffff2b9),
                                      borderRadius: BorderRadius.circular(60*fem),
                                      image: const DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/page-1/images/ellipse-12-bg-AG1.png',
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      // statesofavatar7Qm (I0:926;54832:1399)
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
                                            'assets/page-1/images/states-of-avatar-L3b.png',
                                            width: 32*fem,
                                            height: 32*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // usernameooP (I0:926;54832:1389)
                                    '@LunaBlossom ',
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
                          ),
                          SizedBox(
                            // newuserinchallengevND (0:924)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // avatars4jK (I0:924;54832:1387)
                                  margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 19*fem),
                                  padding: EdgeInsets.fromLTRB(88*fem, 88*fem, 0*fem, 0*fem),
                                  decoration: BoxDecoration (
                                    color: const Color(0xffffbfb8),
                                    borderRadius: BorderRadius.circular(60*fem),
                                    image: const DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/ellipse-14-bg.png',
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    // statesofavatarmNq (I0:924;54832:1399)
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
                                          'assets/page-1/images/states-of-avatar-2KB.png',
                                          width: 32*fem,
                                          height: 32*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // usernamesRs (I0:924;54832:1389)
                                  '@MaxVortex ',
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
                      height: 36*fem,
                    ),
                    SizedBox(
                      // autogroupfcojCDF (9dbKP6ZafQjr1xTjU2FCoj)
                      width: double.infinity,
                      height: 164*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // newuserinchallengeixH (0:922)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 0*fem),
                            width: 167*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // avatarsrYh (I0:922;54832:1387)
                                  margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 26*fem, 19*fem),
                                  padding: EdgeInsets.fromLTRB(88*fem, 88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: const Color(0xffffdbb8),
                                    borderRadius: BorderRadius.circular(60*fem),
                                    image: const DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/ellipse-13-bg.png',
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    // statesofavatarezM (I0:922;54832:1399)
                                    alignment: Alignment.bottomRight,
                                    child: SizedBox(
                                      width: 32*fem,
                                      height: 32*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/states-of-avatar-Au7.png',
                                        width: 32*fem,
                                        height: 32*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // usernamen4y (I0:922;54832:1389)
                                  '@StellaSerenade ',
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
                            // newuserinchallengeKah (0:920)
                            width: 130*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // avatarsfuT (I0:920;54832:1387)
                                  margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 7.5*fem, 19*fem),
                                  padding: EdgeInsets.fromLTRB(88*fem, 88*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: const Color(0xffffe5b8),
                                    borderRadius: BorderRadius.circular(60*fem),
                                    image: const DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/ellipse-25-bg-kuP.png',
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    // statesofavatarALR (I0:920;54832:1399)
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
                                          'assets/page-1/images/states-of-avatar.png',
                                          width: 32*fem,
                                          height: 32*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // usernamerj3 (I0:920;54832:1389)
                                  '@JadeJester ',
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
                      height: 36*fem,
                    ),
                    Container(
                      // newuserinchallengench (0:918)
                      margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 0*fem, 0*fem),
                      width: 127*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // avatarsWYh (I0:918;54832:1387)
                            margin: EdgeInsets.fromLTRB(3.5*fem, 0*fem, 3.5*fem, 19*fem),
                            padding: EdgeInsets.fromLTRB(88*fem, 88*fem, 0*fem, 0*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0xffffa576),
                              borderRadius: BorderRadius.circular(60*fem),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-42-bg.png',
                                ),
                              ),
                            ),
                            child: Align(
                              // statesofavatar1EZ (I0:918;54832:1399)
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
                                    'assets/page-1/images/states-of-avatar-Xv1.png',
                                    width: 32*fem,
                                    height: 32*fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // username6Wu (I0:918;54832:1389)
                            '@WillowWisp',
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
              // seeyourfriendsprogressheree2d (0:928)
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
              // backbutton6fK (0:929)
              left: 20*fem,
              top: 861*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
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
                        // vectorMbF (I0:929;54709:1005)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.53*fem, 0.37*fem),
                        width: 19.47*fem,
                        height: 15.63*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-yFw.png',
                          width: 19.47*fem,
                          height: 15.63*fem,
                        ),
                      ),
                      Text(
                        // backTeH (I0:929;54709:1006)
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
            ),
            Positioned(
              // group31Q3j (0:930)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 566*fem,
                  height: 383*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-31-kDw.png',
                    width: 566*fem,
                    height: 383*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // circlebuttonhoX (0:934)
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
                      'assets/page-1/images/circle-button.png',
                      width: 90*fem,
                      height: 90*fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame31PgM (0:935)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 404*fem,
                height: 366*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // group38Wky (0:936)
                      left: 335*fem,
                      top: 69*fem,
                      child: Align(
                        child: SizedBox(
                          width: 50*fem,
                          height: 50*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/page-1/images/group-38.png',
                              width: 50*fem,
                              height: 50*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // groupartclasspFs (0:939)
                      left: 6*fem,
                      top: 39*fem,
                      child: Align(
                        child: SizedBox(
                          width: 163*fem,
                          height: 25*fem,
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xffa75fe3),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Group: ',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125*ffem/fem,
                                    color: const Color(0xffa75fe3),
                                  ),
                                ),
                                const TextSpan(
                                  text: 'Art Class ',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // baruwX (I0:940;54601:424)
                      left: 0*fem,
                      top: 0*fem,
                      child: SizedBox(
                        width: 398*fem,
                        height: 25*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // 329 (I0:940;54601:424;54516:1338)
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
                              // vector9ay (I0:940;54601:424;54516:1337)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                              width: 23.13*fem,
                              height: 18.26*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-Fn9.png',
                                width: 23.13*fem,
                                height: 18.26*fem,
                              ),
                            ),
                            Container(
                              // vectorTbf (I0:940;54601:424;54516:1336)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                              width: 25*fem,
                              height: 15.98*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-zdw.png',
                                width: 25*fem,
                                height: 15.98*fem,
                              ),
                            ),
                            Container(
                              // vectorNyX (I0:940;54601:424;54516:1335)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                              width: 25*fem,
                              height: 11.41*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-Ea5.png',
                                width: 25*fem,
                                height: 11.41*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // earlymorningsWK3 (0:942)
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
                      // frame27p4q (0:943)
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
                          // amandyouarealreadyawakegetting (0:944)
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
                      // line7hXw (0:945)
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
              // backbuttondAh (0:946)
              left: 287*fem,
              top: 861*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 123*fem,
                  height: 44*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffe5d4ff),
                    borderRadius: BorderRadius.circular(29*fem),
                  ),
                ),
              ),
            ),
            Positioned(
              // rateKJR (0:947)
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
          ],
        ),
      ),
          );
  }
}