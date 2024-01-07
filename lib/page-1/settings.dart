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
        // settingszDf (0:840)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // autogroupehbfWC1 (9dbF2oeJ7TF7qSCzAuEHbf)
              width: double.infinity,
              height: 383*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group31Rpm (0:841)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 566*fem,
                        height: 383*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-31.png',
                          width: 566*fem,
                          height: 383*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // settingsvFj (0:850)
                    left: 25*fem,
                    top: 119*fem,
                    child: Align(
                      child: SizedBox(
                        width: 124*fem,
                        height: 37*fem,
                        child: Text(
                          'Settings',
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
                    // line5zFb (0:851)
                    left: 18*fem,
                    top: 169*fem,
                    child: Align(
                      child: SizedBox(
                        width: 394.02*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // frame186ZX (0:852)
                    left: 16*fem,
                    top: 197.5*fem,
                    child: Container(
                      width: 398*fem,
                      height: 51*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(15*fem),
                      ),
                      child: Container(
                        // frame19R61 (0:853)
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xfff1eaff),
                          borderRadius: BorderRadius.circular(10*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Change username',
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
                    // barvHf (I0:862;54601:424)
                    left: 10*fem,
                    top: 22*fem,
                    child: SizedBox(
                      width: 398*fem,
                      height: 25*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // DnZ (I0:862;54601:424;54516:1338)
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
                            // vectorjku (I0:862;54601:424;54516:1337)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                            width: 23.13*fem,
                            height: 18.26*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Z5j.png',
                              width: 23.13*fem,
                              height: 18.26*fem,
                            ),
                          ),
                          Container(
                            // vectorExZ (I0:862;54601:424;54516:1336)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                            width: 25*fem,
                            height: 15.98*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-krd.png',
                              width: 25*fem,
                              height: 15.98*fem,
                            ),
                          ),
                          Container(
                            // vectormBo (I0:862;54601:424;54516:1335)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                            width: 25*fem,
                            height: 11.41*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-oDT.png',
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
            Container(
              // autogroupgqbj5iH (9dbG8gyWmR7hv6EjFEgQbj)
              padding: EdgeInsets.fromLTRB(16*fem, 3.5*fem, 16*fem, 14.5*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // formfieldouB (0:864)
                    margin: EdgeInsets.fromLTRB(28.05*fem, 0*fem, 62*fem, 22.5*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              // autogroupgh9juBX (9dbGLmTiuxKgwxJY78gH9j)
                              width: double.infinity,
                              height: 50.5*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroup727kFFP (9dbGSM8kvhYRhcdtxb727K)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                    width: 289.95*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // biglabelyhB (I0:864;54709:25503)
                                          left: 49.9499511719*fem,
                                          top: 18.5*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 115*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'New username',
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
                                          // left5VK (I0:864;54709:25504)
                                          left: 33.9499511719*fem,
                                          top: 7.5*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 17*fem,
                                              height: 43*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/left-sLu.png',
                                                width: 17*fem,
                                                height: 43*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // toppartaws (I0:864;54737:627)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: SizedBox(
                                            width: 289.95*fem,
                                            height: 15*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // smalllabeluUM (I0:864;54709:25516)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 88*fem,
                                                      height: 15*fem,
                                                      child: Text(
                                                        'New username',
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
                                    // rightPuK (I0:864;54709:25506)
                                    width: 18*fem,
                                    height: 43*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/right-3zh.png',
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
                  Container(
                    // frame19jTP (0:855)
                    width: double.infinity,
                    height: 51*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Container(
                      // frame19gdX (0:856)
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: const Color(0xfff1eaff),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Change avatar',
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
              // avatarstochooseoCM (0:866)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.5*fem),
              width: 2679*fem,
              height: 105*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // selectavatar4ty (0:867)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse12yW9 (I0:867;54766:729;54646:391)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff2b9),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-12-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarf85 (0:868)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse13PZs (I0:868;54766:729;54646:392)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffdbb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-13-bg-yhT.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatartFj (0:869)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse14QUy (I0:869;54766:729;54646:393)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffbfb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-14-bg-YFb.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarJqF (0:870)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse15qqB (I0:870;54766:729;54646:394)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffc0d9bf),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-15-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarjff (0:871)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse16G9o (I0:871;54766:729;54646:395)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffff8a8a),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-16-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavataryK7 (0:872)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse17hku (I0:872;54766:729;54646:396)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffc2b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-17-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavataroZ3 (0:873)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse18w9T (I0:873;54766:729;54646:397)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffdbb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-18-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarE8Z (0:874)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse19MU5 (I0:874;54766:729;54646:398)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffd4b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-19-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarFZT (0:875)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse20aLq (I0:875;54766:729;54646:399)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfff7c5bf),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-20-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarHW9 (0:876)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse21Dub (I0:876;54766:729;54646:400)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffedd6a1),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-21-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarLDX (0:877)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse22Gcy (I0:877;54766:729;54646:401)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffbeb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-22-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavataryGV (0:878)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse23W1X (I0:878;54766:729;54646:402)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffe3b8ff),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-23-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarnzd (0:879)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse24j9B (I0:879;54766:729;54646:403)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfff6d3bd),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-24-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarELq (0:880)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse25xXj (I0:880;54766:729;54646:404)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffe5b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-25-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarevM (0:881)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse26zDX (I0:881;54766:729;54646:405)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff7b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-26-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarVvy (0:882)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse27qE9 (I0:882;54766:729;54646:406)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff2b9),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-27-bg-5ih.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarXcm (0:883)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse28ruw (I0:883;54766:729;54646:407)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffe5b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-28-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarA9w (0:884)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse29HVT (I0:884;54766:729;54646:408)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff7b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-29-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarnx1 (0:885)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse30Kh3 (I0:885;54766:729;54646:409)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffe5b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-30-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatardhj (0:886)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse31ZrH (I0:886;54766:729;54646:410)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffc0d9bf),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-31-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarfuK (0:887)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse32c3s (I0:887;54766:729;54646:411)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffe0b8ff),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-32-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarich (0:888)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse42F6q (I0:888;54766:729;54646:421)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffa576),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-42-bg-oW9.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // selectavatarYLq (0:889)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                      width: 105*fem,
                      height: double.infinity,
                      child: Center(
                        // ellipse3355s (I0:889;54766:729;54646:412)
                        child: SizedBox(
                          width: double.infinity,
                          height: 90*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfff6d3bd),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-33-bg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame20zyX (0:858)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 14.5*fem),
              width: double.infinity,
              height: 51*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Container(
                // frame19Kku (0:859)
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration (
                  color: const Color(0xfff1eaff),
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Center(
                  child: Text(
                    'Change Private Challenges’ frequency',
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
            SizedBox(
              // autogroupiwjk29X (9dbFK8WRjPpv8MUw7YiWjK)
              width: double.infinity,
              height: 512.69*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group30ZQM (0:845)
                    left: 0*fem,
                    top: 130*fem,
                    child: Align(
                      child: SizedBox(
                        width: 567*fem,
                        height: 382.69*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-30.png',
                          width: 567*fem,
                          height: 382.69*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // dropdownmenufrequency4M7 (0:861)
                    left: 101*fem,
                    top: 0*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 229*fem,
                        height: 278*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupbauhxSV (9dbFXseC9bxMuX7MMoBaUH)
                              padding: EdgeInsets.fromLTRB(12.19*fem, 15*fem, 19.75*fem, 13*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0xffa75fe3),
                                borderRadius: BorderRadius.circular(15*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // selectfrequencysJZ (I0:861;54566:629)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.26*fem, 0*fem),
                                    child: Text(
                                      'Select Frequency',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2125*ffem/fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // vectorBa9 (I0:861;54566:627)
                                    margin: EdgeInsets.fromLTRB(0*fem, 3.09*fem, 0*fem, 0*fem),
                                    width: 16.8*fem,
                                    height: 10.09*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-84H.png',
                                      width: 16.8*fem,
                                      height: 10.09*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              // autogroupotjs6SD (9dbFfsQsPf1ts9rfz2otjs)
                              width: double.infinity,
                              height: 225*fem,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // backbuttoneTj (0:863)
                    left: 16*fem,
                    top: 283*fem,
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
                              // vector7s7 (I0:863;54709:1005)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.53*fem, 0.37*fem),
                              width: 19.47*fem,
                              height: 15.63*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-qg5.png',
                                width: 19.47*fem,
                                height: 15.63*fem,
                              ),
                            ),
                            Text(
                              // backERw (I0:863;54709:1006)
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
                    // donebuttonmgm (0:890)
                    left: 195*fem,
                    top: 283*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 243.34*fem,
                        height: 44*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle63TpV (I0:890;54709:955)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 219*fem,
                                  height: 44*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(32*fem),
                                      color: const Color(0xffe5d4ff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // savechangesYqw (0:891)
                              left: 44*fem,
                              top: 7*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 165*fem,
                                  height: 30*fem,
                                  child: Text(
                                    'Save Changes',
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
                              // vectorqa9 (0:892)
                              left: 11*fem,
                              top: 13*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25*fem,
                                  height: 17.09*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-9X7.png',
                                    width: 25*fem,
                                    height: 17.09*fem,
                                  ),
                                ),
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