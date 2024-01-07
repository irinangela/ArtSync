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
        // profilepage4sj (0:1075)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // userschallengesyE1 (0:1077)
              left: 14*fem,
              top: 524*fem,
              child: SizedBox(
                width: 656*fem,
                height: 560*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // testUAm (0:1078)
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
                          // headlineandiconmQm (I0:1078;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: 419.89*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlineHP7 (I0:1078;54891:2518)
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
                              TextButton(
                                // trashAxh (I0:1078;54891:2519)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: SizedBox(
                                  width: 29*fem,
                                  height: 29*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/trash-ZrH.png',
                                    width: 29*fem,
                                    height: 29*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // testHXX (0:1079)
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
                          // headlineandiconBN1 (I0:1079;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlinetnD (I0:1079;54891:2518)
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
                              TextButton(
                                // trasho8V (I0:1079;54891:2519)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: SizedBox(
                                  width: 29*fem,
                                  height: 29*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/trash-ncH.png',
                                    width: 29*fem,
                                    height: 29*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // testfgV (0:1080)
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
                          // headlineandiconXih (I0:1080;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlineqzH (I0:1080;54891:2518)
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
                              TextButton(
                                // trash9k5 (I0:1080;54891:2519)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: SizedBox(
                                  width: 29*fem,
                                  height: 29*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/trash-t6m.png',
                                    width: 29*fem,
                                    height: 29*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // test3aZ (0:1081)
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
                          // headlineandiconwvq (I0:1081;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: 419.89*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlineg7j (I0:1081;54891:2518)
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
                              TextButton(
                                // trashPnq (I0:1081;54891:2519)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: SizedBox(
                                  width: 29*fem,
                                  height: 29*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/trash-2zu.png',
                                    width: 29*fem,
                                    height: 29*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // testiaD (0:1082)
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
                          // headlineandiconpNM (I0:1082;54891:2517)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 94.17*fem, 0*fem),
                          width: 419.89*fem,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // headlinexDf (I0:1082;54891:2518)
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
                              TextButton(
                                // trashftm (I0:1082;54891:2519)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: SizedBox(
                                  width: 29*fem,
                                  height: 29*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/trash.png',
                                    width: 29*fem,
                                    height: 29*fem,
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
            ),
            Positioned(
              // rectangle67yeZ (0:1083)
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
              // usersfriendsVN1 (0:1085)
              left: 20*fem,
              top: 301*fem,
              child: SizedBox(
                width: 1869*fem,
                height: 125*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // frame70BEq (0:1086)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 113*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse12K69 (I0:1087;54646:391)
                            margin: EdgeInsets.fromLTRB(9.5*fem, 0*fem, 13.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff2b9),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-12-bg-ZUm.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // lunablossomPrh (0:1088)
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
                      // frame71jQm (0:1089)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 126*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse134T3 (I0:1090;54646:392)
                            margin: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 20.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffdbb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-13-bg-B1j.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // stellaserenadeMS9 (0:1091)
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
                      // frame72Hah (0:1092)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // ellipse14pKj (I0:1093;54646:393)
                            margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 16*fem),
                            width: 90*fem,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffbfb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-14-bg-Wk9.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // maxvortexWyF (0:1094)
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
                      // frame73TtV (0:1095)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                      width: 126*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse15CbB (I0:1096;54646:394)
                            margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 18*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffc0d9bf),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-15-bg-mA1.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // stephaniesunsetJu7 (0:1097)
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
                      // frame743rh (0:1098)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse16zmw (I0:1099;54646:395)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 16*fem),
                            width: 90*fem,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffff8a8a),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-16-bg-7TP.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // blazebardWEV (0:1100)
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
                      // frame752Cq (0:1101)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 114*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse18xMP (I0:1102;54646:397)
                            margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 14*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffdbb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-18-bg-4rD.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // felixpeterson4vD (0:1103)
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
                      // frame76DHK (0:1104)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 100*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse20M8d (I0:1105;54646:399)
                            margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 7.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfff7c5bf),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-20-bg-Vms.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // emberechoThT (0:1106)
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
                      // frame78bHs (0:1107)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 103*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse22vL9 (I0:1108;54646:401)
                            margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 8.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffbeb8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-22-bg-9zy.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // orionoraclepgR (0:1109)
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
                      // frame80NC9 (0:1110)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 98*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse25689 (I0:1111;54646:404)
                            margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 6*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffe5b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-25-bg-XUu.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // jadejesterzzD (0:1112)
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
                      // frame77M45 (0:1113)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 119*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse26U8h (I0:1114;54646:405)
                            margin: EdgeInsets.fromLTRB(12.5*fem, 0*fem, 16.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff7b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-26-bg-xmF.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // roseradianceaBj (0:1115)
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
                      // frame79ujo (0:1116)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 104*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse272pR (I0:1117;54646:406)
                            margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 9*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfffff2b9),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-27-bg-e9P.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // zanezephyrLKK (0:1118)
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
                      // frame81HEZ (0:1119)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                      width: 134*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse28pEV (I0:1120;54646:407)
                            margin: EdgeInsets.fromLTRB(19.5*fem, 0*fem, 24.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffe5b8),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-28-bg-mgd.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // auroraamethystjMT (0:1121)
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
                      // frame82sTf (0:1122)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 120*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse32o6R (I0:1123;54646:411)
                            margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 17*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffe0b8ff),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-32-bg-qHT.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // evieevergreen777 (0:1124)
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
                      // frame83rKb (0:1125)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                      width: 99*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse42aFb (I0:1126;54646:421)
                            margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 6.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xffffa576),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-42-bg-4Rf.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // willowwispHfo (0:1127)
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
                      // frame842NV (0:1128)
                      width: 99*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse33mL5 (I0:1129;54646:412)
                            margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 6.5*fem, 16*fem),
                            width: double.infinity,
                            height: 90*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(45*fem),
                              color: const Color(0xfff6d3bd),
                              image: const DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-33-bg-v7j.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // skylerswiftsP7 (0:1130)
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
              // createagroupbuttondefault1VK (0:1131)
              left: 14*fem,
              top: 735*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(11*fem, 17*fem, 11*fem, 18.5*fem),
                  width: 67*fem,
                  height: 67*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff9747ff),
                    borderRadius: BorderRadius.circular(33.5*fem),
                  ),
                  child: Center(
                    // vectorgrM (I0:1131;0:1041)
                    child: SizedBox(
                      width: 45*fem,
                      height: 31.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-gnm.png',
                        width: 45*fem,
                        height: 31.5*fem,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group28czu (0:1132)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 566*fem,
                  height: 382*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-28-8SD.png',
                    width: 566*fem,
                    height: 382*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse47Xry (0:1139)
              left: 38*fem,
              top: 77*fem,
              child: Align(
                child: SizedBox(
                  width: 50*fem,
                  height: 50*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(25*fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iconssettingsfilled24px3KX (0:1140)
              left: 49.2167816162*fem,
              top: 87.8333740234*fem,
              child: Align(
                child: SizedBox(
                  width: 27.56*fem,
                  height: 28.33*fem,
                  child: Image.asset(
                    'assets/page-1/images/icons-settingsfilled24px.png',
                    width: 27.56*fem,
                    height: 28.33*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // barXkV (I0:1141;54601:424)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rGy (I0:1141;54601:424;54516:1338)
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
                      // vectoraCy (I0:1141;54601:424;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                      width: 23.13*fem,
                      height: 18.26*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-qbX.png',
                        width: 23.13*fem,
                        height: 18.26*fem,
                      ),
                    ),
                    Container(
                      // vector6BK (I0:1141;54601:424;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                      width: 25*fem,
                      height: 15.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-yvq.png',
                        width: 25*fem,
                        height: 15.98*fem,
                      ),
                    ),
                    Container(
                      // vectorDFw (I0:1141;54601:424;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                      width: 25*fem,
                      height: 11.41*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-WqP.png',
                        width: 25*fem,
                        height: 11.41*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // sofiegreenwBw (0:1142)
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
              // ellipse242DP (I0:1143;54646:403)
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
                          'assets/page-1/images/ellipse-24-bg-xZF.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // friendsuHB (0:1144)
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
              // groupsQUq (0:1145)
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
              // menuhiq (0:1146)
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
                      // menuitemzT3 (I0:1146;54599:196)
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
                            'assets/page-1/images/menu-item-sTw.png',
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
                      // menuitemHBF (I0:1146;54599:199)
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
                            'assets/page-1/images/menu-item-AJD.png',
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
                      // menuitemxYH (I0:1146;54599:202)
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
                            // iconsUWd (I0:1146;54599:203)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                            width: 32*fem,
                            height: 32*fem,
                            child: Image.asset(
                              'assets/page-1/images/icons-fjP.png',
                              width: 32*fem,
                              height: 32*fem,
                            ),
                          ),
                          Container(
                            // profileo37 (I0:1146;54599:204)
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
          ],
        ),
      ),
          );
  }
}