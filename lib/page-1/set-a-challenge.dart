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
        // setachallengepAm (0:1005)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame53wFP (0:1006)
              left: 10*fem,
              top: 336*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 23*fem, 0*fem, 0*fem),
                width: 405*fem,
                height: 471*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // newchallengesnameDCu (0:1010)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 105*fem, 0.5*fem),
                      child: Text(
                        'New Challenge’s name:',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // formfieldHiZ (0:1017)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.95*fem, 62*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 402.95*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                // autogroupxzqsC4q (9dbPLKJycFpUr7sc3RXZqs)
                                width: double.infinity,
                                height: 50.5*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // autogroupvits8jB (9dbPR9WG4sW5G4hXayviTs)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                      width: 384.95*fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // biglabel4cq (I0:1017;54709:25503)
                                            left: 22.9499511719*fem,
                                            top: 18.5*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 45*fem,
                                                height: 20*fem,
                                                child: Text(
                                                  'Name',
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
                                            // leftZZb (I0:1017;54709:25504)
                                            left: 6.9499511719*fem,
                                            top: 7.5*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 17*fem,
                                                height: 43*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/left-9Uu.png',
                                                  width: 17*fem,
                                                  height: 43*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // toppartg8R (I0:1017;54737:627)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: SizedBox(
                                              width: 384.95*fem,
                                              height: 15*fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // smalllabelcXs (I0:1017;54709:25516)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 34*fem,
                                                        height: 15*fem,
                                                        child: Text(
                                                          'Name',
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
                                      // rightJfb (I0:1017;54709:25506)
                                      width: 18*fem,
                                      height: 43*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/right-8Hw.png',
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
                      // newchallengesdescription37P (0:1016)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 1.5*fem),
                      child: Text(
                        'New Challenge’s description:',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // formfield8uX (0:1018)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 50*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 420.45*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                // autogrouphhvh3Fo (9dbPn8uHaWY6n6ukE6hHvH)
                                width: double.infinity,
                                height: 50.5*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // autogroupmdz9B77 (9dbPsDb9tW4jyHa9YHmdz9)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                      width: 402.45*fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // biglabel6zm (I0:1018;54709:25503)
                                            left: 33*fem,
                                            top: 18.5*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 88*fem,
                                                height: 20*fem,
                                                child: Text(
                                                  'Description',
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
                                            // leftBmK (I0:1018;54709:25504)
                                            left: 17*fem,
                                            top: 7.5*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 17*fem,
                                                height: 43*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/left-LZX.png',
                                                  width: 17*fem,
                                                  height: 43*fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // topparthzZ (I0:1018;54737:627)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: SizedBox(
                                              width: 402.45*fem,
                                              height: 15*fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // smalllabelEzV (I0:1018;54709:25516)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 69*fem,
                                                        height: 15*fem,
                                                        child: Text(
                                                          'Description',
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
                                      // rightwP7 (I0:1018;54709:25506)
                                      width: 18*fem,
                                      height: 43*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/right-Qjb.png',
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
                      // wouldyouliketoalsoaddaphotofor (0:1012)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 29*fem),
                      constraints: BoxConstraints (
                        maxWidth: 319*fem,
                      ),
                      child: Text(
                        'Would you like to also add a\nphoto for inspiration?',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // circlebuttonx3K (0:1007)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 30*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 90*fem,
                          height: 90*fem,
                          child: Image.asset(
                            'assets/page-1/images/circle-button-R3f.png',
                            width: 90*fem,
                            height: 90*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // selectdurationforthechallengeD (0:1014)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                      child: Text(
                        'Select duration for the Challenge:',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // dropdownmenuduration8ru (0:1008)
                      margin: EdgeInsets.fromLTRB(96*fem, 0*fem, 96*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15*fem, 15*fem, 18.37*fem, 15*fem),
                          width: double.infinity,
                          height: 278*fem,
                          decoration: BoxDecoration (
                            color: const Color(0xffdcbfff),
                            borderRadius: BorderRadius.circular(15*fem),
                          ),
                          child: SizedBox(
                            // autogroupqbvjoTF (9dbNxpvnPs6MmbzRs3QbVj)
                            width: double.infinity,
                            height: 25*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // selectdurationjbo (I0:1008;54565:186)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                  child: Text(
                                    'Select Duration',
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
                                  // vectorF4M (I0:1008;54565:184)
                                  margin: EdgeInsets.fromLTRB(0*fem, 3.09*fem, 0*fem, 0*fem),
                                  width: 15.63*fem,
                                  height: 10.09*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-DsX.png',
                                    width: 15.63*fem,
                                    height: 10.09*fem,
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
            Positioned(
              // group30kmo (0:1019)
              left: 0*fem,
              top: 716.9999542236*fem,
              child: Align(
                child: SizedBox(
                  width: 566*fem,
                  height: 383*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-30-KN1.png',
                    width: 566*fem,
                    height: 383*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // group31esB (0:1023)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 566*fem,
                  height: 383*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-31-XGM.png',
                    width: 566*fem,
                    height: 383*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // setachallengeMmb (0:1028)
              left: 100*fem,
              top: 104*fem,
              child: Align(
                child: SizedBox(
                  width: 230*fem,
                  height: 37*fem,
                  child: Text(
                    'Set a Challenge',
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
              // buttonriM (0:1029)
              left: 274*fem,
              top: 835*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 112*fem,
                  height: 60*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffa75fe3),
                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
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
              // baruwX (I0:1030;54601:424)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // 3H3 (I0:1030;54601:424;54516:1338)
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
                      // vectorZWH (I0:1030;54601:424;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 4.91*fem),
                      width: 23.13*fem,
                      height: 18.26*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-cvu.png',
                        width: 23.13*fem,
                        height: 18.26*fem,
                      ),
                    ),
                    Container(
                      // vectorUt9 (I0:1030;54601:424;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 5.37*fem),
                      width: 25*fem,
                      height: 15.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-bmB.png',
                        width: 25*fem,
                        height: 15.98*fem,
                      ),
                    ),
                    Container(
                      // vectorovR (I0:1030;54601:424;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.63*fem),
                      width: 25*fem,
                      height: 11.41*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-aKb.png',
                        width: 25*fem,
                        height: 11.41*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame38wWq (0:1031)
              left: 70*fem,
              top: 170*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(10*fem, 14*fem, 9*fem, 11*fem),
                width: 290*fem,
                height: 128*fem,
                decoration: BoxDecoration (
                  color: const Color(0x7ff1eaff),
                  borderRadius: BorderRadius.circular(15*fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x4cd0a2f7),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 2*fem,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // shakeyourdevicetogetarandomlyg (0:1032)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 5*fem),
                      constraints: BoxConstraints (
                        maxWidth: 252*fem,
                      ),
                      child: Text(
                        'Shake your device to get a randomly generated challenge...',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Text(
                      // orcreateyourownVAy (0:1034)
                      '...or create your own:',
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
            Positioned(
              // backbuttonDcm (0:1035)
              left: 39*fem,
              top: 835*fem,
              child: Container(
                width: 112*fem,
                height: 60*fem,
                decoration: BoxDecoration (
                  color: const Color(0xffe5d4ff),
                  borderRadius: BorderRadius.circular(15*fem),
                ),
              ),
            ),
            Positioned(
              // back8Uq (0:1036)
              left: 78*fem,
              top: 851*fem,
              child: Align(
                child: SizedBox(
                  width: 57*fem,
                  height: 30*fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Back',
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
            ),
            Positioned(
              // vector1Hj (0:1037)
              left: 50*fem,
              top: 858*fem,
              child: Align(
                child: SizedBox(
                  width: 19.47*fem,
                  height: 15.63*fem,
                  child: Image.asset(
                    'assets/page-1/images/vector-9Tf.png',
                    width: 19.47*fem,
                    height: 15.63*fem,
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