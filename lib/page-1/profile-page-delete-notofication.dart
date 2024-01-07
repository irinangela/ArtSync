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
        // profilepagedeletenotoficationb (0:1147)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // userschallengesVuK (0:1149)
              left: 14*fem,
              top: 515*fem,
              child: SizedBox(
                width: 656*fem,
                height: 560*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // testcDF (0:1150)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 0*fem),
                        width: 656*fem,
                        height: 140*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffdcbfff),
                          borderRadius: BorderRadius.circular(35*fem),
                        ),
                        child: Container(
                          // headlineandiconhVb (I0:1150;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: 419.89*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlinep4R (I0:1150;54891:2518)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 200.72*fem, 0*fem),
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
                              SizedBox(
                                // trashWC9 (I0:1150;54891:2519)
                                width: 29*fem,
                                height: 29*fem,
                                child: Image.asset(
                                  'assets/page-1/images/trash-cuX.png',
                                  width: 29*fem,
                                  height: 29*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // test2wB (0:1151)
                      left: 0*fem,
                      top: 105*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 0*fem, 0*fem),
                        width: 434.89*fem,
                        height: 140*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffdcbfff),
                          borderRadius: BorderRadius.circular(35*fem),
                        ),
                        child: Container(
                          // headlineandiconjKo (I0:1151;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headline3rH (I0:1151;54891:2518)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 69.72*fem, 0*fem),
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
                              SizedBox(
                                // trashZZj (I0:1151;54891:2519)
                                width: 29*fem,
                                height: 29*fem,
                                child: Image.asset(
                                  'assets/page-1/images/trash-DWy.png',
                                  width: 29*fem,
                                  height: 29*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // testhpM (0:1152)
                      left: 0*fem,
                      top: 210*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 0*fem, 0*fem),
                        width: 434.89*fem,
                        height: 140*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffdcbfff),
                          borderRadius: BorderRadius.circular(35*fem),
                        ),
                        child: Container(
                          // headlineandiconat9 (I0:1152;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlineiUZ (I0:1152;54891:2518)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.72*fem, 0*fem),
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
                              SizedBox(
                                // trash2VF (I0:1152;54891:2519)
                                width: 29*fem,
                                height: 29*fem,
                                child: Image.asset(
                                  'assets/page-1/images/trash-9Mj.png',
                                  width: 29*fem,
                                  height: 29*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // testMnR (0:1153)
                      left: 0*fem,
                      top: 315*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 0*fem),
                        width: 480*fem,
                        height: 140*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffdcbfff),
                          borderRadius: BorderRadius.circular(35*fem),
                        ),
                        child: Container(
                          // headlineandiconTaZ (I0:1153;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: 419.89*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlineBFf (I0:1153;54891:2518)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 166.72*fem, 0*fem),
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
                              SizedBox(
                                // trashtvm (I0:1153;54891:2519)
                                width: 29*fem,
                                height: 29*fem,
                                child: Image.asset(
                                  'assets/page-1/images/trash-z8Z.png',
                                  width: 29*fem,
                                  height: 29*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // testpZX (0:1154)
                      left: 0*fem,
                      top: 420*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 0*fem),
                        width: 560*fem,
                        height: 140*fem,
                        decoration: BoxDecoration (
                          color: const Color(0xffdcbfff),
                          borderRadius: BorderRadius.circular(35*fem),
                        ),
                        child: Container(
                          // headlineandiconJzV (I0:1154;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: 419.89*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlineEdF (I0:1154;54891:2518)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 131.72*fem, 0*fem),
                                child: Text(
                                  'Pallete Harmony ',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125*ffem/fem,
                                    color: const Color(0xff7b33b7),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // trashMSy (I0:1154;54891:2519)
                                width: 29*fem,
                                height: 29*fem,
                                child: Image.asset(
                                  'assets/page-1/images/trash-Fvy.png',
                                  width: 29*fem,
                                  height: 29*fem,
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
            ),
            Positioned(
              // rectangle67h13 (0:1155)
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
              // usersfriendsnYH (0:1157)
              left: 20*fem,
              top: 301*fem,
              child: SizedBox(
                width: 1869*fem,
                height: 125*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame704Vo (0:1158)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 113*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse12zPT (I0:1159;54646:391)
                            margin: EdgeInsets.fromLTRB(9.5*fem, 0*fem, 13.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff2b9),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-12-bg-jwf.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // lunablossomsCM (0:1160)
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
                      // frame71CkR (0:1161)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 126*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse13iim (I0:1162;54646:392)
                            margin: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 20.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffdbb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-13-bg-Rah.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // stellaserenadeDfX (0:1163)
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
                      // frame72xND (0:1164)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ellipse14V7F (I0:1165;54646:393)
                            margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 16*fem),
                            width: 90*fem,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffbfb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-14-bg-dfX.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // maxvortexBVs (0:1166)
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
                      // frame73j1b (0:1167)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                      width: 126*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse15euF (I0:1168;54646:394)
                            margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 18*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffc0d9bf),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-15-bg-iiu.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // stephaniesunsetAMo (0:1169)
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
                      // frame74JU1 (0:1170)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse16qyj (I0:1171;54646:395)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 16*fem),
                            width: 90*fem,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffff8a8a),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-16-bg-WnV.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // blazebardMBP (0:1172)
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
                      // frame75TVK (0:1173)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 114*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse18bLd (I0:1174;54646:397)
                            margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 14*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffdbb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-18-bg-XfF.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // felixpetersonWCh (0:1175)
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
                      // frame763yK (0:1176)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 100*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse20aiM (I0:1177;54646:399)
                            margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 7.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfff7c5bf),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-20-bg-ZWq.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // emberechotj3 (0:1178)
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
                      // frame78EY1 (0:1179)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 103*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse22xyo (I0:1180;54646:401)
                            margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 8.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffbeb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-22-bg-Stq.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // orionoraclegeu (0:1181)
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
                      // frame80da9 (0:1182)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 98*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse25Aa5 (I0:1183;54646:404)
                            margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 6*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffe5b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-25-bg-zZ7.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // jadejesterUam (0:1184)
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
                      // frame77cws (0:1185)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 119*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse26YKj (I0:1186;54646:405)
                            margin: EdgeInsets.fromLTRB(12.5*fem, 0*fem, 16.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff7b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-26-bg-wgd.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // roseradiance3GV (0:1187)
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
                      // frame79Zkd (0:1188)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 104*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse27JCR (I0:1189;54646:406)
                            margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 9*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff2b9),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-27-bg-y6q.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // zanezephyrQFT (0:1190)
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
                      // frame819Tw (0:1191)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 134*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse28gTs (I0:1192;54646:407)
                            margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 24.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffe5b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-28-bg-WoK.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // auroraamethystCSD (0:1193)
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
                      // frame828am (0:1194)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 120*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse32fKo (I0:1195;54646:411)
                            margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 17*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffe0b8ff),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-32-bg-Za1.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // evieevergreenMiR (0:1196)
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
                      // frame836R7 (0:1197)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 99*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse422Jm (I0:1198;54646:421)
                            margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 6.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffa576),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-42-bg-EeD.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // willowwisp86u (0:1199)
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
                      // frame84saH (0:1200)
                      width: 99*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse332TB (I0:1201;54646:412)
                            margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 6.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfff6d3bd),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-33-bg-gMo.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // skylerswift8m7 (0:1202)
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
              // createagroupbuttondefaultHP7 (0:1203)
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
                  // vectorAho (I0:1203;0:1041)
                  child: SizedBox(
                    width: 45*fem,
                    height: 31.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-i5P.png',
                      width: 45*fem,
                      height: 31.5*fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group286rM (0:1204)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 566*fem,
                  height: 382*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-28-1vZ.png',
                    width: 566*fem,
                    height: 382*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // barpXT (I0:1211;54601:424)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // juK (I0:1211;54601:424;54516:1338)
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
                      // vectorFMs (I0:1211;54601:424;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                      width: 23.13*fem,
                      height: 18.26*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-fMj.png',
                        width: 23.13*fem,
                        height: 18.26*fem,
                      ),
                    ),
                    Container(
                      // vectorxn5 (I0:1211;54601:424;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                      width: 25*fem,
                      height: 15.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-TnZ.png',
                        width: 25*fem,
                        height: 15.98*fem,
                      ),
                    ),
                    Container(
                      // vectort9w (I0:1211;54601:424;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                      width: 25*fem,
                      height: 11.41*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-Br9.png',
                        width: 25*fem,
                        height: 11.41*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iconssettingsfilled24px1kM (0:1212)
              left: 43.7305603027*fem,
              top: 81.1667480469*fem,
              child: Align(
                child: SizedBox(
                  width: 40.53*fem,
                  height: 41.67*fem,
                  child: Image.asset(
                    'assets/page-1/images/icons-settingsfilled24px-wrZ.png',
                    width: 40.53*fem,
                    height: 41.67*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // sofiegreenv6d (0:1213)
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
              // ellipse24oRK (I0:1214;54646:403)
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
                          'assets/page-1/images/ellipse-24-bg-Hmb.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // friendsUnM (0:1215)
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
              // groupsaaV (0:1216)
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
              // menuh9K (0:1217)
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
                      // menuitembEh (I0:1217;54599:196)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      width: 68*fem,
                      height: 62*fem,
                      child: Image.asset(
                        'assets/page-1/images/menu-item-aV7.png',
                        width: 68*fem,
                        height: 62*fem,
                      ),
                    ),
                    SizedBox(
                      width: 13*fem,
                    ),
                    Container(
                      // menuitem6SM (I0:1217;54599:199)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                      width: 68*fem,
                      height: 62*fem,
                      child: Image.asset(
                        'assets/page-1/images/menu-item-q1j.png',
                        width: 68*fem,
                        height: 62*fem,
                      ),
                    ),
                    SizedBox(
                      width: 13*fem,
                    ),
                    Container(
                      // menuitemQC9 (I0:1217;54599:202)
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
                            // icons889 (I0:1217;54599:203)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                            width: 32*fem,
                            height: 32*fem,
                            child: Image.asset(
                              'assets/page-1/images/icons-U9f.png',
                              width: 32*fem,
                              height: 32*fem,
                            ),
                          ),
                          Container(
                            // profileSPj (I0:1217;54599:204)
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
              // blurred9Z3 (0:1218)
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
              // popupwindowS2M (0:1219)
              left: 44*fem,
              top: 383*fem,
              child: SizedBox(
                width: 342*fem,
                height: 166*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle52wzh (I0:1219;54579:189)
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
                      // line4cb3 (I0:1219;54579:194)
                      left: 168*fem,
                      top: 112*fem,
                      child: Align(
                        child: SizedBox(
                          width: 0*fem,
                          height: 52*fem,
                          child: Image.asset(
                            'assets/page-1/images/line-4.png',
                            width: 0*fem,
                            height: 52*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // areyousureyouwanttodeletethisg (I0:1219;54579:192)
                      left: 29.5*fem,
                      top: 35*fem,
                      child: Align(
                        child: SizedBox(
                          width: 276*fem,
                          height: 49*fem,
                          child: Text(
                            'Are you sure you want to exit this group?',
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
                      // frame11oQd (I0:1219;54579:202)
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
                      // frame12s9b (I0:1219;54579:207)
                      left: 222.5*fem,
                      top: 116*fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 57*fem,
                          height: 44*fem,
                          child: Center(
                            child: Text(
                              'Exit ',
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