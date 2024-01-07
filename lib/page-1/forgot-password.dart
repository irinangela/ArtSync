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
        // forgotpasswordEG1 (0:765)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xffe5d4ff), Color(0x00e5d4ff), Color(0x09e5d4ff), Color(0x05e5d4ff), Color(0xb5e5d4ff)],
            stops: <double>[0, 0.449, 0.495, 0.548, 0.991],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupepvvsZs (9db8y4aijbBKDyHgc7EpvV)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41*fem),
              width: 445.45*fem,
              height: 710*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle14NmX (0:767)
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
                    // rectangle16Rjo (0:769)
                    left: 52*fem,
                    top: 112*fem,
                    child: Align(
                      child: SizedBox(
                        width: 325*fem,
                        height: 598*fem,
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
                    // barLLy (I0:770;54601:414)
                    left: 10*fem,
                    top: 22*fem,
                    child: SizedBox(
                      width: 398*fem,
                      height: 25*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ecZ (I0:770;54601:414;54516:1338)
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
                            // vectorkvV (I0:770;54601:414;54516:1337)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 3*fem),
                            width: 23.13*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-LC9.png',
                              width: 23.13*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // vectorsVK (I0:770;54601:414;54516:1336)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3.5*fem),
                            width: 25*fem,
                            height: 17.5*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-5Vs.png',
                              width: 25*fem,
                              height: 17.5*fem,
                            ),
                          ),
                          Container(
                            // vectorauX (I0:770;54601:414;54516:1335)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                            width: 25*fem,
                            height: 12.5*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-sNH.png',
                              width: 25*fem,
                              height: 12.5*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // forgotpasswordnoproblem78m (0:772)
                    left: 112*fem,
                    top: 188*fem,
                    child: Align(
                      child: SizedBox(
                        width: 206*fem,
                        height: 59*fem,
                        child: Text(
                          'Forgot Password?\nNo problem',
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
                    // writehereyouremailaddressandwe (0:773)
                    left: 16*fem,
                    top: 279*fem,
                    child: Align(
                      child: SizedBox(
                        width: 367*fem,
                        height: 49*fem,
                        child: Text(
                          'Write here your email address and we \nwill sent you a link to create a new one.',
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
                    // formfielddmK (0:774)
                    left: 0*fem,
                    top: 396.5*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 429.45*fem,
                        height: 50.5*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              // autogroupid7f8xy (9db9JDhU18gKgvhiwFid7F)
                              width: double.infinity,
                              height: 50.5*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroupmnkj5dK (9db9PPDXbapeUXJxAzMNKj)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                    width: 411.45*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // biglabelQvV (I0:774;54709:25503)
                                          left: 32*fem,
                                          top: 18.5*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 107*fem,
                                              height: 20*fem,
                                              child: Text(
                                                'Email address',
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
                                          // lefthPo (I0:774;54709:25504)
                                          left: 16*fem,
                                          top: 7.5*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 17*fem,
                                              height: 43*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/left-fdB.png',
                                                width: 17*fem,
                                                height: 43*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // toppartD7F (I0:774;54737:627)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: SizedBox(
                                            width: 411.45*fem,
                                            height: 15*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // smalllabeljbP (I0:774;54709:25516)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 83*fem,
                                                      height: 15*fem,
                                                      child: Text(
                                                        'Email address',
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
                                    // rightE2M (I0:774;54709:25506)
                                    width: 18*fem,
                                    height: 43*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/right-BqB.png',
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
                    // pleasetypeyouremailaddressN8Z (0:775)
                    left: 16*fem,
                    top: 357*fem,
                    child: Align(
                      child: SizedBox(
                        width: 298*fem,
                        height: 25*fem,
                        child: Text(
                          'Please type your Email Address\n',
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
                    // undrawwelldonere3hpo1SeD (0:778)
                    left: 79*fem,
                    top: 457*fem,
                    child: Align(
                      child: SizedBox(
                        width: 273*fem,
                        height: 242.67*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(58*fem),
                          child: Image.asset(
                            'assets/page-1/images/undrawwelldonere3hpo-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupbzruLDo (9db9fNkt5gwiPnobRTbzru)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 61*fem, 0*fem),
              width: double.infinity,
              height: 181*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupek5prhw (9db9kYGwg963BPQpfCEk5P)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(61*fem, 53*fem, 11*fem, 79*fem),
                    width: 188*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      gradient: const LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0xffffffff), Color(0x00ffffff)],
                        stops: <double>[0, 1],
                      ),
                      borderRadius: BorderRadius.only (
                        topRight: Radius.circular(2000*fem),
                      ),
                    ),
                    child: TextButton(
                      // backbutton785 (0:777)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(11.32*fem, 7.8*fem, 14.67*fem, 11.2*fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          color: const Color(0xffe5d4ff),
                          borderRadius: BorderRadius.circular(15*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectorP5b (I0:777;54709:1005)
                              margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 14.65*fem, 0*fem),
                              width: 18.36*fem,
                              height: 17.41*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-Ze9.png',
                                width: 18.36*fem,
                                height: 17.41*fem,
                              ),
                            ),
                            Text(
                              // backVeR (I0:777;54709:1006)
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
                  Container(
                    // buttonqCV (0:776)
                    margin: EdgeInsets.fromLTRB(0*fem, 53*fem, 0*fem, 79*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 116*fem,
                        height: double.infinity,
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}