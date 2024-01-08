import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: 932,
      width: 430,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [
            Color(0xFFE5D4FF),
            Color.fromARGB(200, 229, 212, 255),
            Color.fromARGB(73, 229, 212, 255),
            Color.fromARGB(82, 229, 212, 255),
            Color.fromARGB(178, 229, 212, 255),
            Color(0xFFE5D4FF),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 180,
              height: 180,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white,
                  ],
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(2000),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 70,
            child: Container(
              width: 180,
              height: 180,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0),
                  ],
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(2000),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: (screenHeight-560)/2,
            left: (screenWidth-280)/2,
            child: Container(
              width: 280,
              height: 560,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


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
        // chooseanavatarniu (0:1302)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle17JSM (0:1303)
              left: 52*fem,
              top: 190*fem,
              child: Align(
                child: SizedBox(
                  width: 325*fem,
                  height: 553*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(100*fem),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle1715s (0:1304)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 430*fem,
                  height: 932*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      gradient: LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0xffe5d4ff), Color(0x00e5d4ff), Color(0x09e5d4ff), Color(0x05e5d4ff), Color(0xb5e5d4ff)],
                        stops: <double>[0, 0.449, 0.495, 0.548, 0.991],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle17EUR (0:1305)
              left: 242*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 188*fem,
                  height: 181*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.only (
                        bottomLeft: Radius.circular(2000*fem),
                      ),
                      gradient: const LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0x00ffffff), Color(0xffffffff)],
                        stops: <double>[0, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle17V9T (0:1306)
              left: 1*fem,
              top: 750*fem,
              child: Align(
                child: SizedBox(
                  width: 188*fem,
                  height: 181*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.only (
                        topRight: Radius.circular(2000*fem),
                      ),
                      gradient: const LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0xffffffff), Color(0x00ffffff)],
                        stops: <double>[0, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // buttonm6y (0:1307)
              left: 256*fem,
              top: 802*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 116*fem,
                  height: 49*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffa75fe3),
                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Ready',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // nowitstimetochooseanavatarCxy (0:1309)
              left: 21*fem,
              top: 238*fem,
              child: Align(
                child: SizedBox(
                  width: 388*fem,
                  height: 30*fem,
                  child: Text(
                    'Now it’s time to choose an Avatar!',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // justclickonyourfavoriteh93 (0:1311)
              left: 95*fem,
              top: 324*fem,
              child: Align(
                child: SizedBox(
                  width: 239*fem,
                  height: 25*fem,
                  child: Text(
                    'Just click on your favorite',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // avatarstochooseBa1 (0:1313)
              left: 0*fem,
              top: 439*fem,
              child: SizedBox(
                width: 2679*fem,
                height: 105*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      // selectavatarRjF (0:1314)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse1299T (I0:1314;54766:729;54646:391)
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
                                    'assets/page-1/images/ellipse-12-bg-pK3.png',
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
                      // selectavatarqHB (0:1315)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse13xsb (I0:1315;54766:729;54646:392)
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
                                    'assets/page-1/images/ellipse-13-bg-YY1.png',
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
                      // selectavatarrxy (0:1316)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse14Pi1 (I0:1316;54766:729;54646:393)
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
                                    'assets/page-1/images/ellipse-14-bg-WAM.png',
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
                      // selectavatarJpy (0:1317)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse153Gm (I0:1317;54766:729;54646:394)
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
                                    'assets/page-1/images/ellipse-15-bg-Jnm.png',
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
                      // selectavatarA6V (0:1318)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse16V8m (I0:1318;54766:729;54646:395)
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
                                    'assets/page-1/images/ellipse-16-bg-ze5.png',
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
                      // selectavatarBGV (0:1319)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse17Jru (I0:1319;54766:729;54646:396)
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
                                    'assets/page-1/images/ellipse-17-bg-ALh.png',
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
                      // selectavatar2Y1 (0:1320)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse18kyo (I0:1320;54766:729;54646:397)
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
                                    'assets/page-1/images/ellipse-18-bg-Tq3.png',
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
                      // selectavatarGBT (0:1321)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse19C57 (I0:1321;54766:729;54646:398)
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
                                    'assets/page-1/images/ellipse-19-bg-cFB.png',
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
                      // selectavatarVa1 (0:1322)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse20DF7 (I0:1322;54766:729;54646:399)
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
                                    'assets/page-1/images/ellipse-20-bg-74m.png',
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
                      // selectavatarihf (0:1323)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse21StZ (I0:1323;54766:729;54646:400)
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
                                    'assets/page-1/images/ellipse-21-bg-bHj.png',
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
                      // selectavatar9ny (0:1324)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse22Gsb (I0:1324;54766:729;54646:401)
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
                                    'assets/page-1/images/ellipse-22-bg-s45.png',
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
                      // selectavatarb9B (0:1325)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse23izV (I0:1325;54766:729;54646:402)
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
                                    'assets/page-1/images/ellipse-23-bg-ubo.png',
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
                      // selectavatarRP7 (0:1326)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse24MXf (I0:1326;54766:729;54646:403)
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
                                    'assets/page-1/images/ellipse-24-bg-3PX.png',
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
                      // selectavatarfYM (0:1327)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse25o8m (I0:1327;54766:729;54646:404)
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
                                    'assets/page-1/images/ellipse-25-bg-sfX.png',
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
                      // selectavataruhb (0:1328)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse26FFf (I0:1328;54766:729;54646:405)
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
                                    'assets/page-1/images/ellipse-26-bg-fwf.png',
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
                      // selectavatarYVf (0:1329)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse27UPK (I0:1329;54766:729;54646:406)
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
                                    'assets/page-1/images/ellipse-27-bg-S4q.png',
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
                      // selectavatarnQ1 (0:1330)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse28hWy (I0:1330;54766:729;54646:407)
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
                                    'assets/page-1/images/ellipse-28-bg-tt1.png',
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
                      // selectavataropu (0:1331)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse29jiZ (I0:1331;54766:729;54646:408)
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
                                    'assets/page-1/images/ellipse-29-bg-Qk9.png',
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
                      // selectavatar3DT (0:1332)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse30m9T (I0:1332;54766:729;54646:409)
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
                                    'assets/page-1/images/ellipse-30-bg-YfB.png',
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
                      // selectavatarsyB (0:1333)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse31DXF (I0:1333;54766:729;54646:410)
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
                                    'assets/page-1/images/ellipse-31-bg-FGm.png',
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
                      // selectavatar7sX (0:1334)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse32Ex9 (I0:1334;54766:729;54646:411)
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
                                    'assets/page-1/images/ellipse-32-bg-suK.png',
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
                      // selectavatarkfb (0:1335)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse42g3T (I0:1335;54766:729;54646:421)
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
                                    'assets/page-1/images/ellipse-42-bg-Spy.png',
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
                      // selectavataraPj (0:1336)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8*fem, 7*fem, 7*fem, 8*fem),
                        width: 105*fem,
                        height: double.infinity,
                        child: Center(
                          // ellipse33Jad (I0:1336;54766:729;54646:412)
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
                                    'assets/page-1/images/ellipse-33-bg-Ftd.png',
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
            ),
            Positioned(
              // bar2Wd (I0:1337;54601:414)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // 9bF (I0:1337;54601:414;54516:1338)
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
                      // vectorGQy (I0:1337;54601:414;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 3*fem),
                      width: 23.13*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-eRP.png',
                        width: 23.13*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // vectoragZ (I0:1337;54601:414;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3.5*fem),
                      width: 25*fem,
                      height: 17.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-EkR.png',
                        width: 25*fem,
                        height: 17.5*fem,
                      ),
                    ),
                    Container(
                      // vectorW4R (I0:1337;54601:414;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                      width: 25*fem,
                      height: 12.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-LPT.png',
                        width: 25*fem,
                        height: 12.5*fem,
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