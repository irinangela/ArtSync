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
        // resultspage3e1 (0:979)
        padding: EdgeInsets.fromLTRB(12*fem, 22*fem, 15*fem, 27*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/rectangle-56-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // barhTf (I0:981;54601:414)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 54*fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // 1z9 (I0:981;54601:414;54516:1338)
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
                    // vectoriNm (I0:981;54601:414;54516:1337)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 3*fem),
                    width: 23.13*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-PkD.png',
                      width: 23.13*fem,
                      height: 20*fem,
                    ),
                  ),
                  Container(
                    // vectorcj3 (I0:981;54601:414;54516:1336)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3.5*fem),
                    width: 25*fem,
                    height: 17.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-U6u.png',
                      width: 25*fem,
                      height: 17.5*fem,
                    ),
                  ),
                  Container(
                    // vector8xH (I0:981;54601:414;54516:1335)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                    width: 25*fem,
                    height: 12.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-jxD.png',
                      width: 25*fem,
                      height: 12.5*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // andthewinnerofthischallengeis4 (0:983)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 243*fem, 9*fem),
              constraints: BoxConstraints (
                maxWidth: 144*fem,
              ),
              child: Text(
                'And the winner of this challenge is...',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // congratulationswPw (0:1004)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 11*fem),
              child: Text(
                'Congratulations!',
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  color: const Color(0xffa75fe3),
                ),
              ),
            ),
            Container(
              // frame973C5 (0:1001)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 62*fem),
              padding: EdgeInsets.fromLTRB(30*fem, 15*fem, 47*fem, 15*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: const Color(0xa3e3dafa),
                borderRadius: BorderRadius.circular(34*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ellipse13Xd3 (I0:1002;54646:392)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                    width: 120*fem,
                    height: 120*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(60*fem),
                      color: const Color(0xffffdbb8),
                      image: const DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-13-bg-5KF.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    // stellaserenadeRTX (0:1003)
                    '@StellaSerenade',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // resultsAAD (0:984)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 15*fem, 92*fem),
              width: double.infinity,
              height: 217*fem,
              decoration: BoxDecoration (
                color: const Color(0x7ff1eaff),
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // resultseLH (0:986)
                    left: 75*fem,
                    top: 24*fem,
                    child: Align(
                      child: SizedBox(
                        width: 91*fem,
                        height: 30*fem,
                        child: Text(
                          'Results:',
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
                    // pointsw4V (0:987)
                    left: 260*fem,
                    top: 24*fem,
                    child: Align(
                      child: SizedBox(
                        width: 79*fem,
                        height: 30*fem,
                        child: Text(
                          'Points:',
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
                    // line8EpH (0:988)
                    left: 235*fem,
                    top: 18*fem,
                    child: Align(
                      child: SizedBox(
                        width: 1*fem,
                        height: 181*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff7b33b7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line9xVP (0:989)
                    left: 27*fem,
                    top: 55*fem,
                    child: Align(
                      child: SizedBox(
                        width: 315*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff7b33b7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // st2nd3rd5pu (0:990)
                    left: 9*fem,
                    top: 70*fem,
                    child: Align(
                      child: SizedBox(
                        width: 42*fem,
                        height: 122*fem,
                        child: Text(
                          '1st:\n\n2nd:\n\n3rd:',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xff7b33b7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // stellaserenadeyfP (0:991)
                    left: 64*fem,
                    top: 70*fem,
                    child: Align(
                      child: SizedBox(
                        width: 162*fem,
                        height: 25*fem,
                        child: Text(
                          '@StellaSerenade',
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
                    // pnts5yK (0:992)
                    left: 247*fem,
                    top: 70*fem,
                    child: Align(
                      child: SizedBox(
                        width: 85*fem,
                        height: 25*fem,
                        child: Text(
                          '+50 pnts',
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
                    // pntso8d (0:993)
                    left: 247*fem,
                    top: 166*fem,
                    child: Align(
                      child: SizedBox(
                        width: 83*fem,
                        height: 25*fem,
                        child: Text(
                          '+10 pnts',
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
                    // pntsuhT (0:994)
                    left: 246*fem,
                    top: 118*fem,
                    child: Align(
                      child: SizedBox(
                        width: 84*fem,
                        height: 25*fem,
                        child: Text(
                          '+25 pnts',
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
                    // jadejester2XB (0:995)
                    left: 64*fem,
                    top: 118*fem,
                    child: Align(
                      child: SizedBox(
                        width: 125*fem,
                        height: 25*fem,
                        child: Text(
                          '@JadeJester',
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
                    // lunablossomLXs (0:996)
                    left: 64*fem,
                    top: 166*fem,
                    child: Align(
                      child: SizedBox(
                        width: 145*fem,
                        height: 25*fem,
                        child: Text(
                          '@LunaBlossom',
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
                ],
              ),
            ),
            Container(
              // autogroupqoerqzR (9dbMehSy2SnRUG1E5iqoeR)
              margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 5*fem, 0*fem),
              width: double.infinity,
              height: 44*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // backbuttonaSD (0:997)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 144*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12*fem, 7*fem, 19*fem, 7*fem),
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffe5d4ff),
                          borderRadius: BorderRadius.circular(29*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vector4cH (I0:997;54709:1005)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.53*fem, 0.37*fem),
                              width: 19.47*fem,
                              height: 15.63*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-Ah7.png',
                                width: 19.47*fem,
                                height: 15.63*fem,
                              ),
                            ),
                            Text(
                              // backZZ3 (I0:997;54709:1006)
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
                  TextButton(
                    // backbuttonu77 (0:998)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12*fem, 7*fem, 16*fem, 7*fem),
                      width: 123*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: const Color(0xffe5d4ff),
                        borderRadius: BorderRadius.circular(29*fem),
                      ),
                      child: SizedBox(
                        // autogroupuhpvQJm (9dbMqSe4de9V1WwpAuuHpV)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupwshp9XF (9dbMurgNfxkfTQ3c6kWShP)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 0*fem),
                              height: double.infinity,
                              child: Text(
                                'New',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xffa75fe3),
                                ),
                              ),
                            ),
                            SizedBox(
                              // vectorEHo (0:999)
                              width: 19*fem,
                              height: 16*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-sEZ.png',
                                width: 19*fem,
                                height: 16*fem,
                              ),
                            ),
                          ],
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
          );
  }
}