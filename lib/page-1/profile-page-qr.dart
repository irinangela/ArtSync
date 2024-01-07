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
        // profilepageqrVHB (0:1220)
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
                // usersgroupsmVb (0:1222)
                left: 24*fem,
                top: 532*fem,
                child: SizedBox(
                  width: 656*fem,
                  height: 548*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // accordionGhF (0:1223)
                        left: 0*fem,
                        top: 0*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 0*fem),
                            width: 656*fem,
                            height: 140*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xffdcbfff),
                              borderRadius: BorderRadius.circular(35*fem),
                            ),
                            child: Container(
                              // headlineandicon8zM (I0:1223;54794:3805)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 206.11*fem, 0*fem),
                              width: 419.89*fem,
                              height: double.infinity,
                              child: Text(
                                'Art Class ',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff7b33b7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // accordionoah (0:1224)
                        left: 0*fem,
                        top: 102*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 0*fem, 0*fem),
                            width: 434.89*fem,
                            height: 140*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xffdcbfff),
                              borderRadius: BorderRadius.circular(35*fem),
                            ),
                            child: SizedBox(
                              // headlineandiconHEy (I0:1224;54794:3805)
                              width: double.infinity,
                              height: double.infinity,
                              child: Text(
                                'Inc Harmony Collective',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff7b33b7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // accordionnxR (0:1225)
                        left: 0*fem,
                        top: 204*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 0*fem, 0*fem),
                            width: 434.89*fem,
                            height: 140*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xffdcbfff),
                              borderRadius: BorderRadius.circular(35*fem),
                            ),
                            child: SizedBox(
                              // headlineandiconHPP (I0:1225;54794:3805)
                              width: double.infinity,
                              height: double.infinity,
                              child: Text(
                                'Canvas Companions',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff7b33b7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // accordionb9B (0:1226)
                        left: 0*fem,
                        top: 306*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 0*fem),
                            width: 480*fem,
                            height: 140*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xffdcbfff),
                              borderRadius: BorderRadius.circular(35*fem),
                            ),
                            child: Container(
                              // headlineandiconThB (I0:1226;54794:3805)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.11*fem, 0*fem),
                              width: 419.89*fem,
                              height: double.infinity,
                              child: Text(
                                'Artistry Alies',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff7b33b7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // accordionMXf (0:1227)
                        left: 0*fem,
                        top: 408*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 0*fem),
                            width: 560*fem,
                            height: 140*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xffdcbfff),
                              borderRadius: BorderRadius.circular(35*fem),
                            ),
                            child: Container(
                              // headlineandiconSJD (I0:1227;54794:3805)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 110.11*fem, 0*fem),
                              width: 419.89*fem,
                              height: double.infinity,
                              child: Text(
                                'Pallete Harmony Circle',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff7b33b7),
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
                // rectangle67Y6M (0:1228)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 430*fem,
                    height: 507*fem,
                    child: Container(
                      decoration: const BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // usersfriendsDCV (0:1230)
                left: 20*fem,
                top: 301*fem,
                child: SizedBox(
                  width: 1869*fem,
                  height: 125*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // frame70h7f (0:1231)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 113*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse12RJZ (I0:1232;54646:391)
                              margin: EdgeInsets.fromLTRB(9.5*fem, 0*fem, 13.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xfffff2b9),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-12-bg-F2H.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // lunablossom7BP (0:1233)
                              '@LunaBlossom ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame71qdB (0:1234)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                        width: 126*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse13aKs (I0:1235;54646:392)
                              margin: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 20.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffffdbb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-13-bg-Qcq.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // stellaserenadet5f (0:1236)
                              '@StellaSerenade ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame72pzu (0:1237)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ellipse14NFj (I0:1238;54646:393)
                              margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 16*fem),
                              width: 90*fem,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffffbfb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-14-bg-GWM.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // maxvortexg1X (0:1239)
                              '@MaxVortex ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame73cvm (0:1240)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                        width: 126*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse15kn5 (I0:1241;54646:394)
                              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 18*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffc0d9bf),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-15-bg-Ka1.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // stephaniesunsetUCH (0:1242)
                              '@StephanieSunset',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame74zgR (0:1243)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse16icR (I0:1244;54646:395)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 16*fem),
                              width: 90*fem,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffff8a8a),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-16-bg-1To.png',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // blazebardcxh (0:1245)
                              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                              child: Text(
                                '@BlazeBard ',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame75wk5 (0:1246)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 114*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse18UV7 (I0:1247;54646:397)
                              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 14*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffffdbb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-18-bg-iLh.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // felixpetersonbJq (0:1248)
                              '@FelixPeterson ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame76jR3 (0:1249)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                        width: 100*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse20fJh (I0:1250;54646:399)
                              margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 7.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xfff7c5bf),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-20-bg-2iM.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // emberechoNiu (0:1251)
                              '@EmberEcho ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame78vVX (0:1252)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 103*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse22rPB (I0:1253;54646:401)
                              margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 8.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffffbeb8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-22-bg-FqB.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // orionoracleZYV (0:1254)
                              '@OrionOracle ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame80Vww (0:1255)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 98*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse25e49 (I0:1256;54646:404)
                              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 6*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffffe5b8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-25-bg-CHF.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // jadejesterxKj (0:1257)
                              '@JadeJester ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame77hYD (0:1258)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 119*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse26dwf (I0:1259;54646:405)
                              margin: EdgeInsets.fromLTRB(12.5*fem, 0*fem, 16.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xfffff7b8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-26-bg-C5X.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // roseradiancekFb (0:1260)
                              '@RoseRadiance ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame79gQ9 (0:1261)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 104*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse271hK (I0:1262;54646:406)
                              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 9*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xfffff2b9),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-27-bg-Aqo.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // zanezephyrj7X (0:1263)
                              '@ZaneZephyr ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame81fms (0:1264)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                        width: 134*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse281Kw (I0:1265;54646:407)
                              margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 24.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffffe5b8),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-28-bg-ncR.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // auroraamethystvSu (0:1266)
                              '@AuroraAmethyst ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame82sN9 (0:1267)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 120*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse32CvD (I0:1268;54646:411)
                              margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 17*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffe0b8ff),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-32-bg-Dv9.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // evieevergreenuJq (0:1269)
                              '@EvieEvergreen ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame83Eru (0:1270)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 99*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse42ZeH (I0:1271;54646:421)
                              margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 6.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xffffa576),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-42-bg-gTK.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // willowwisp56q (0:1272)
                              '@WillowWisp ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        // frame84p4R (0:1273)
                        width: 99*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse33mEZ (I0:1274;54646:412)
                              margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 6.5*fem, 16*fem),
                              width: double.infinity,
                              height: 90*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(45*fem),
                                color: const Color(0xfff6d3bd),
                                image: const DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/ellipse-33-bg-Emf.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // skylerswiftUPs (0:1275)
                              '@SkylerSwift ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
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
                // createagroupbuttondefaultDsF (0:1276)
                left: 341*fem,
                top: 715*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(11*fem, 17*fem, 11*fem, 18.5*fem),
                  width: 67*fem,
                  height: 67*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff9747ff),
                    borderRadius: BorderRadius.circular(33.5*fem),
                  ),
                  child: Center(
                    // vectoriJD (I0:1276;0:1041)
                    child: SizedBox(
                      width: 45*fem,
                      height: 31.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-j3f.png',
                        width: 45*fem,
                        height: 31.5*fem,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group283bP (0:1277)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 566*fem,
                    height: 382*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-28-Gcy.png',
                      width: 566*fem,
                      height: 382*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // barxTT (I0:1284;54601:424)
                left: 10*fem,
                top: 22*fem,
                child: SizedBox(
                  width: 398*fem,
                  height: 25*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // s4d (I0:1284;54601:424;54516:1338)
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
                        // vectorP2y (I0:1284;54601:424;54516:1337)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                        width: 23.13*fem,
                        height: 18.26*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-ms7.png',
                          width: 23.13*fem,
                          height: 18.26*fem,
                        ),
                      ),
                      Container(
                        // vectortkR (I0:1284;54601:424;54516:1336)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                        width: 25*fem,
                        height: 15.98*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-uwP.png',
                          width: 25*fem,
                          height: 15.98*fem,
                        ),
                      ),
                      Container(
                        // vectorQim (I0:1284;54601:424;54516:1335)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                        width: 25*fem,
                        height: 11.41*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-ANd.png',
                          width: 25*fem,
                          height: 11.41*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // iconssettingsfilled24pxLcR (0:1285)
                left: 43.7305603027*fem,
                top: 81.1666259766*fem,
                child: Align(
                  child: SizedBox(
                    width: 40.53*fem,
                    height: 41.67*fem,
                    child: Image.asset(
                      'assets/page-1/images/icons-settingsfilled24px-8X3.png',
                      width: 40.53*fem,
                      height: 41.67*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // sofiegreenEC1 (0:1286)
                left: 162*fem,
                top: 211*fem,
                child: Align(
                  child: SizedBox(
                    width: 124*fem,
                    height: 25*fem,
                    child: Text(
                      '@SofieGreen',
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
                // ellipse24vqX (I0:1287;54646:403)
                left: 164*fem,
                top: 82*fem,
                child: Align(
                  child: SizedBox(
                    width: 120*fem,
                    height: 120*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(60*fem),
                        color: const Color(0xfff6d3bd),
                        image: const DecorationImage (
                          fit: BoxFit.cover,
                          image: AssetImage (
                            'assets/page-1/images/ellipse-24-bg-eQZ.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // friendsRXP (0:1288)
                left: 28*fem,
                top: 249*fem,
                child: Align(
                  child: SizedBox(
                    width: 76*fem,
                    height: 25*fem,
                    child: Text(
                      'Friends:',
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
                // groups8Au (0:1289)
                left: 31*fem,
                top: 466*fem,
                child: Align(
                  child: SizedBox(
                    width: 74*fem,
                    height: 25*fem,
                    child: Text(
                      'Groups:',
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
                // menuRvh (0:1290)
                left: 60*fem,
                top: 823*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(6*fem, 6*fem, 6*fem, 6*fem),
                  width: 329*fem,
                  height: 77*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffe5d4ff),
                    borderRadius: BorderRadius.circular(60*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // menuitemXTw (I0:1290;54599:196)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                        width: 68*fem,
                        height: 62*fem,
                        child: Image.asset(
                          'assets/page-1/images/menu-item-vED.png',
                          width: 68*fem,
                          height: 62*fem,
                        ),
                      ),
                      SizedBox(
                        width: 13*fem,
                      ),
                      Container(
                        // menuitemENM (I0:1290;54599:199)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                        width: 68*fem,
                        height: 62*fem,
                        child: Image.asset(
                          'assets/page-1/images/menu-item-HWZ.png',
                          width: 68*fem,
                          height: 62*fem,
                        ),
                      ),
                      SizedBox(
                        width: 13*fem,
                      ),
                      Container(
                        // menuitemx3T (I0:1290;54599:202)
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
                              // iconsfTf (I0:1290;54599:203)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                              width: 32*fem,
                              height: 32*fem,
                              child: Image.asset(
                                'assets/page-1/images/icons-n9o.png',
                                width: 32*fem,
                                height: 32*fem,
                              ),
                            ),
                            Container(
                              // profileBgu (I0:1290;54599:204)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                              child: Text(
                                'Profile',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                // rectangle61uN1 (0:1291)
                left: 1*fem,
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
                // qrcodepopupz8Z (0:1292)
                left: 40*fem,
                top: 217*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(46.5*fem, 36*fem, 46.5*fem, 43*fem),
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
                            // scanthisqrcodetoenterthegroupE (I0:1292;54579:497)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                            constraints: BoxConstraints (
                              maxWidth: 257*fem,
                            ),
                            child: Text(
                              'Scan this QR code to add a friend',
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
                            // autogroupsklrvRX (9dbdJv2KJ77y5yLnNjskLR)
                            width: 256*fem,
                            height: 278*fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-sklr.png',
                              width: 256*fem,
                              height: 278*fem,
                            ),
                          ),
                          Container(
                            // schoolartclassf8D (I0:1292;54579:495)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              '@SofieGreen',
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