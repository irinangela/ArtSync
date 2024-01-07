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
        // createagroupPn1 (0:1038)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // createagroupbuttondefaulttTs (0:1039)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 67*fem,
                  height: 67*fem,
                  child: Image.asset(
                    'assets/page-1/images/create-a-group-button-default.png',
                    width: 67*fem,
                    height: 67*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // createagroupbuttonAAV (0:1042)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 107*fem,
                  height: 194*fem,
                  child: Image.asset(
                    'assets/page-1/images/create-a-group-button.png',
                    width: 107*fem,
                    height: 194*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // frame45Fhj (0:1047)
              left: 9*fem,
              top: 273*fem,
              child: SizedBox(
                width: 406*fem,
                height: 2034*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      // friendstochoose9HK (0:1048)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 109*fem, 8*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse12RVj (I0:1048;54646:585;54646:391)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xfffff2b9),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-12-bg-whj.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernameiDw (I0:1048;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@LunaBlossom',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseP5B (0:1049)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 89*fem, 8*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse134x1 (I0:1049;54646:585;54646:392)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffffdbb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-13-bg-hLu.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernameB13 (I0:1049;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@StellaSerenade',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochoosefB7 (0:1050)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 138*fem, 8*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse149c5 (I0:1050;54646:585;54646:393)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffffbfb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-14-bg-CLh.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernamefaR (I0:1050;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@MaxVortex',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochoose9kV (0:1051)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 68*fem, 8*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse15ex9 (I0:1051;54646:585;54646:394)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffc0d9bf),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-15-bg-RGV.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernameA9o (I0:1051;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@StephanieSunset',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseGid (0:1052)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 146*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse16Mzy (I0:1052;54646:585;54646:395)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffff8a8a),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-16-bg-1WR.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // username4uP (I0:1052;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@BlazeBard',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseNv5 (0:1053)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 107*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse185pV (I0:1053;54646:585;54646:397)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffffdbb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-18-bg-3u3.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernameoEh (I0:1053;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@FelixPeterson',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseuYd (0:1054)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 131*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse2015s (I0:1054;54646:585;54646:399)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xfff7c5bf),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-20-bg-Tny.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernamevCq (I0:1054;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@EmberEcho',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseqKo (0:1055)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 125*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse22ieV (I0:1055;54646:585;54646:401)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffffbeb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-22-bg-h1j.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // username29P (I0:1055;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@OrionOracle',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochoose7gd (0:1056)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 134*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse25c7b (I0:1056;54646:585;54646:404)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffffe5b8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-25-bg-ZsF.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernameWim (I0:1056;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@JadeJester',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseDdB (0:1057)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 100*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse267yT (I0:1057;54646:585;54646:405)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xfffff7b8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-26-bg-LBK.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernameq8m (I0:1057;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@RoseRadiance',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseYJ5 (0:1058)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 124*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse27ERo (I0:1058;54646:585;54646:406)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xfffff2b9),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-27-bg-iVF.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernamewLD (I0:1058;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@ZaneZephyr',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseqwP (0:1059)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 76*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse28YL1 (I0:1059;54646:585;54646:407)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffffe5b8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-28-bg-Gmf.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernameTC5 (I0:1059;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@AuroraAmethyst',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseN49 (0:1060)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 76*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse32qiR (I0:1060;54646:585;54646:411)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffe0b8ff),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-32-bg-1fo.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernamejoo (I0:1060;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@AuroraAmethyst',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochooseefs (0:1061)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 131*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse429sX (I0:1061;54646:585;54646:421)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xffffa576),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-42-bg-LVw.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // username4zV (I0:1061;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@WillowWisp',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 21*fem,
                    ),
                    TextButton(
                      // friendstochoosen9o (0:1062)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 132*fem, 8*fem),
                        width: double.infinity,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(81*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse33G4y (I0:1062;54646:585;54646:412)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 100*fem,
                              height: 100*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(50*fem),
                                color: const Color(0xfff6d3bd),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-33-bg-m5T.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // usernamea5f (I0:1062;54646:586)
                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                              child: Text(
                                '@SkylerSwift',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
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
            Positioned(
              // group39hRB (0:1063)
              left: 0*fem,
              top: 854*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(19*fem, 16*fem, 19*fem, 18*fem),
                width: 430*fem,
                height: 78*fem,
                decoration: const BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: TextButton(
                  // backbuttonCMw (0:1065)
                  onPressed: () {},
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12*fem, 7*fem, 19*fem, 7*fem),
                    width: 123*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xffe5d4ff),
                      borderRadius: BorderRadius.circular(29*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorh3o (I0:1065;54709:1005)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.53*fem, 0.37*fem),
                          width: 19.47*fem,
                          height: 15.63*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-L3j.png',
                            width: 19.47*fem,
                            height: 15.63*fem,
                          ),
                        ),
                        Text(
                          // backadP (I0:1065;54709:1006)
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
            ),
            Positioned(
              // donebuttoniUh (0:1066)
              left: 291*fem,
              top: 870*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(11*fem, 8.25*fem, 18*fem, 5.75*fem),
                  width: 123*fem,
                  height: 44*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffe5d4ff),
                    borderRadius: BorderRadius.circular(32*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // vectorBNH (I0:1066;54709:958)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 1.91*fem),
                        width: 25*fem,
                        height: 17.09*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-o3f.png',
                          width: 25*fem,
                          height: 17.09*fem,
                        ),
                      ),
                      Text(
                        // doneHw7 (I0:1066;54709:956)
                        'Done',
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
              // group32S3K (0:1067)
              left: 0*fem,
              top: 0*fem,
              child: SizedBox(
                width: 527*fem,
                height: 382*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle60kph (0:1068)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 430*fem,
                          height: 269*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse43s8d (0:1069)
                      left: 187.9453125*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 270.95*fem,
                          height: 264*fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-43.png',
                            width: 270.95*fem,
                            height: 264*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse44yBf (0:1070)
                      left: 298.7456054688*fem,
                      top: 62*fem,
                      child: Align(
                        child: SizedBox(
                          width: 199.25*fem,
                          height: 219*fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-44.png',
                            width: 199.25*fem,
                            height: 219*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse45gbs (0:1071)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 253.26*fem,
                          height: 263*fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-45.png',
                            width: 253.26*fem,
                            height: 263*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // createyournewgroupowP (0:1072)
                      left: 35*fem,
                      top: 72*fem,
                      child: Align(
                        child: SizedBox(
                          width: 242*fem,
                          height: 73*fem,
                          child: Text(
                            'Create your new group!',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 30*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff7b33b7),
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
              // formfieldJ7T (0:1073)
              left: 16.5500488281*fem,
              top: 183.5*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 369.45*fem,
                  height: 50.5*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // autogroupthgvoa1 (9dbRi5gkyFPaCyNEyPThgV)
                        width: double.infinity,
                        height: 50.5*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogrouprft7Z3P (9dbRnziEiKgrDL8zSVRFT7)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                              width: 351.45*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // biglabelVSq (I0:1073;54709:25503)
                                    left: 42.4499511719*fem,
                                    top: 18.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 100*fem,
                                        height: 20*fem,
                                        child: Text(
                                          'Group Name ',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2125*ffem/fem,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // leftbEy (I0:1073;54709:25504)
                                    left: 26.4499511719*fem,
                                    top: 7.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 17*fem,
                                        height: 43*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/left-xam.png',
                                          width: 17*fem,
                                          height: 43*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // toppartCkZ (I0:1073;54737:627)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: SizedBox(
                                      width: 351.45*fem,
                                      height: 15*fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // smalllabelLLy (I0:1073;54709:25516)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 76*fem,
                                                height: 15*fem,
                                                child: Text(
                                                  'Group Name ',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w700,
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
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              // rightRdK (I0:1073;54709:25506)
                              width: 18*fem,
                              height: 43*fem,
                              child: Image.asset(
                                'assets/page-1/images/right-3S9.png',
                                width: 18*fem,
                                height: 43*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // barZDj (I0:1074;54601:424)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // Tpu (I0:1074;54601:424;54516:1338)
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
                      // vectoraPj (I0:1074;54601:424;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                      width: 23.13*fem,
                      height: 18.26*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-uRs.png',
                        width: 23.13*fem,
                        height: 18.26*fem,
                      ),
                    ),
                    Container(
                      // vector5rH (I0:1074;54601:424;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                      width: 25*fem,
                      height: 15.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-Rub.png',
                        width: 25*fem,
                        height: 15.98*fem,
                      ),
                    ),
                    Container(
                      // vectorcLR (I0:1074;54601:424;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                      width: 25*fem,
                      height: 11.41*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-VWq.png',
                        width: 25*fem,
                        height: 11.41*fem,
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