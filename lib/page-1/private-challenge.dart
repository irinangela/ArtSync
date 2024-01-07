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
        // privatechallengej2y (0:897)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group28efj (0:898)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 566*fem,
                  height: 383*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-28.png',
                    width: 566*fem,
                    height: 383*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // cozybythefireplacekCy (0:903)
              left: 59*fem,
              top: 97*fem,
              child: Align(
                child: SizedBox(
                  width: 311*fem,
                  height: 37*fem,
                  child: Text(
                    'Cozy by the fireplace',
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
              // frame24dXf (0:904)
              left: 16*fem,
              top: 205*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(21*fem, 43.5*fem, 21*fem, 42.5*fem),
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
                  // thinkoftheperfectchristmaseveh (0:905)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints (
                        maxWidth: 356*fem,
                      ),
                      child: Text(
                        'Think of the perfect Christmas Eve.\nHot chocolate, relaxing music, snow...\nThere is no wrong answer,\ncreate what your heart desires.',
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
              // line6JnD (0:906)
              left: 16*fem,
              top: 170*fem,
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
            Positioned(
              // rememberpVf (0:908)
              left: 144*fem,
              top: 700*fem,
              child: Align(
                child: SizedBox(
                  width: 141*fem,
                  height: 32*fem,
                  child: Text(
                    'Remember!',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 26*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff797070),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // circlebutton7Um (0:909)
              left: 170*fem,
              top: 421*fem,
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
                      'assets/page-1/images/circle-button-uCV.png',
                      width: 90*fem,
                      height: 90*fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // barbeq (I0:910;54601:424)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // X2h (I0:910;54601:424;54516:1338)
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
                      // vector313 (I0:910;54601:424;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                      width: 23.13*fem,
                      height: 18.26*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-qjF.png',
                        width: 23.13*fem,
                        height: 18.26*fem,
                      ),
                    ),
                    Container(
                      // vectorx81 (I0:910;54601:424;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                      width: 25*fem,
                      height: 15.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-QeV.png',
                        width: 25*fem,
                        height: 15.98*fem,
                      ),
                    ),
                    Container(
                      // vector4gq (I0:910;54601:424;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                      width: 25*fem,
                      height: 11.41*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-T2Z.png',
                        width: 25*fem,
                        height: 11.41*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // backbuttonAjs (0:911)
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
                        // vectorcLy (I0:911;54709:1005)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.53*fem, 0.37*fem),
                        width: 19.47*fem,
                        height: 15.63*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-DDs.png',
                          width: 19.47*fem,
                          height: 15.63*fem,
                        ),
                      ),
                      Text(
                        // backjAh (I0:911;54709:1006)
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
              // yourprivatechallengefq3 (0:912)
              left: 16*fem,
              top: 61*fem,
              child: Align(
                child: SizedBox(
                  width: 220*fem,
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
                        const TextSpan(
                          text: 'Your ',
                        ),
                        TextSpan(
                          text: 'private',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xffa75fe3),
                          ),
                        ),
                        const TextSpan(
                          text: ' challenge ',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // pntskV7 (0:913)
              left: 171*fem,
              top: 137*fem,
              child: Align(
                child: SizedBox(
                  width: 86*fem,
                  height: 25*fem,
                  child: Text(
                    '+30 pnts',
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
              // themoreprivatechallengesyoucom (0:914)
              left: 13.5*fem,
              top: 742*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 403*fem,
                    height: 108*fem,
                    child: Text(
                      'The more Private Challenges you complete, the more points you will get.\nChallenge yourself! ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Roboto',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5*ffem/fem,
                        color: const Color(0xff797070),
                      ),
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