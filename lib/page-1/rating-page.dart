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
        // ratingpagedzZ (0:1293)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/rectangle-59-bg.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // carouseltestingJqo (0:1295)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(30*fem, 208*fem, 0*fem, 209*fem),
                width: 430*fem,
                height: 932*fem,
                child: SizedBox(
                  // frame64Qtq (I0:1295;54778:1167)
                  width: 1860*fem,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        // photowtm (I0:1295;54778:1147)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 356*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15*fem),
                          ),
                          child: Center(
                            // sky2Gw3 (I0:1295;54778:1147;54674:419)
                            child: SizedBox(
                              width: 544*fem,
                              height: 515*fem,
                              child: Image.asset(
                                'assets/page-1/images/sky2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20*fem,
                      ),
                      TextButton(
                        // photoaB3 (I0:1295;54778:1156)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15*fem),
                          ),
                          child: Align(
                            // sky5WqP (I0:1295;54778:1156;54693:551)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 484*fem,
                              height: 515*fem,
                              child: Image.asset(
                                'assets/page-1/images/sky5.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20*fem,
                      ),
                      TextButton(
                        // photo2oj (I0:1295;54778:1153)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15*fem),
                          ),
                          child: Align(
                            // sk41xhP (I0:1295;54778:1153;54693:552)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 444*fem,
                              height: 515*fem,
                              child: Image.asset(
                                'assets/page-1/images/sk4-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20*fem,
                      ),
                      TextButton(
                        // photoUvd (I0:1295;54778:1150)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15*fem),
                          ),
                          child: Align(
                            // sky1pUh (I0:1295;54778:1150;54693:553)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 413*fem,
                              height: 515*fem,
                              child: Image.asset(
                                'assets/page-1/images/sky1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20*fem,
                      ),
                      TextButton(
                        // photo9ms (I0:1295;54778:1159)
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15*fem),
                          ),
                          child: Align(
                            // sky35fX (I0:1295;54778:1159;54693:554)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 404*fem,
                              height: 515*fem,
                              child: Image.asset(
                                'assets/page-1/images/sky3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // barQho (I0:1296;54601:414)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iyP (I0:1296;54601:414;54516:1338)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 259*fem, 0*fem),
                      child: Text(
                        ' 8:35',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // vector1xV (I0:1296;54601:414;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 3*fem),
                      width: 23.13*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-4Xb.png',
                        width: 23.13*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // vectorKiH (I0:1296;54601:414;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3.5*fem),
                      width: 25*fem,
                      height: 17.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-nmF.png',
                        width: 25*fem,
                        height: 17.5*fem,
                      ),
                    ),
                    Container(
                      // vectorrCR (I0:1296;54601:414;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                      width: 25*fem,
                      height: 12.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-keM.png',
                        width: 25*fem,
                        height: 12.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // justtaponcreationsthatcaughtyo (0:1297)
              left: 64*fem,
              top: 101*fem,
              child: Align(
                child: SizedBox(
                  width: 301*fem,
                  height: 59*fem,
                  child: Text(
                    'Just tap on creations that \ncaught your eye...',
                    textAlign: TextAlign.center,
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
              // evenifyoudontknowwhothecreator (0:1298)
              left: 75.5*fem,
              top: 765*fem,
              child: Align(
                child: SizedBox(
                  width: 278*fem,
                  height: 59*fem,
                  child: Text(
                    '...even if you don’t know who the creator is!',
                    textAlign: TextAlign.center,
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
              // backbuttonitq (0:1299)
              left: 24*fem,
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
                        // vectorag9 (I0:1299;54709:1005)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.53*fem, 0.37*fem),
                        width: 19.47*fem,
                        height: 15.63*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-hyB.png',
                          width: 19.47*fem,
                          height: 15.63*fem,
                        ),
                      ),
                      Text(
                        // back6uP (I0:1299;54709:1006)
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
              // backbuttonqry (0:1300)
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
                    color: const Color(0xffdcbfff),
                    borderRadius: BorderRadius.circular(29*fem),
                  ),
                ),
              ),
            ),
            Positioned(
              // resultswv1 (0:1301)
              left: 306*fem,
              top: 868*fem,
              child: Align(
                child: SizedBox(
                  width: 85*fem,
                  height: 30*fem,
                  child: Text(
                    'Results',
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