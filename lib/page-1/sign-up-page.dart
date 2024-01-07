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
        // signuppageic1 (0:749)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xffe5d4ff), Color(0xffe5d4ff), Color(0x00e5d4ff), Color(0x09e5d4ff), Color(0x05e5d4ff), Color(0xb5e5d4ff)],
            stops: <double>[0, 0, 0.25, 0.5, 0.75, 1],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle14MQ5 (0:751)
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
              // rectangle15Q7T (0:752)
              left: 0*fem,
              top: 751*fem,
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
              // rectangle16gKs (0:753)
              left: 44*fem,
              top: 148*fem,
              child: Align(
                child: SizedBox(
                  width: 325*fem,
                  height: 623*fem,
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
              // createanaccounto9b (0:754)
              left: 107*fem,
              top: 187*fem,
              child: Align(
                child: SizedBox(
                  width: 211*fem,
                  height: 30*fem,
                  child: Text(
                    'Create an account',
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
              // buttonVYD (0:755)
              left: 253*fem,
              top: 804*fem,
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
              // enteryouremailjhT (0:756)
              left: 16*fem,
              top: 246*fem,
              child: Align(
                child: SizedBox(
                  width: 163*fem,
                  height: 25*fem,
                  child: Text(
                    'Enter your E-mail',
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
              // pickausernameQob (0:757)
              left: 16*fem,
              top: 355*fem,
              child: Align(
                child: SizedBox(
                  width: 156*fem,
                  height: 25*fem,
                  child: Text(
                    'Pick a username',
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
              // pickapasswordHcV (0:758)
              left: 16*fem,
              top: 465*fem,
              child: Align(
                child: SizedBox(
                  width: 154*fem,
                  height: 25*fem,
                  child: Text(
                    'Pick a password',
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
              // barn3T (I0:759;54601:414)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // JXb (I0:759;54601:414;54516:1338)
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
                      // vectordJy (I0:759;54601:414;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 3*fem),
                      width: 23.13*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-3Bf.png',
                        width: 23.13*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // vectorw4m (I0:759;54601:414;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3.5*fem),
                      width: 25*fem,
                      height: 17.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-Sdw.png',
                        width: 25*fem,
                        height: 17.5*fem,
                      ),
                    ),
                    Container(
                      // vectorqfw (I0:759;54601:414;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                      width: 25*fem,
                      height: 12.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-gMX.png',
                        width: 25*fem,
                        height: 12.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // backbuttonMeH (0:760)
              left: 61*fem,
              top: 804*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(11.32*fem, 7.8*fem, 14.67*fem, 11.2*fem),
                  width: 116*fem,
                  height: 49*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xffe5d4ff),
                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // vector1yj (I0:760;54709:1005)
                        margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 14.65*fem, 0*fem),
                        width: 18.36*fem,
                        height: 17.41*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-YWD.png',
                          width: 18.36*fem,
                          height: 17.41*fem,
                        ),
                      ),
                      Text(
                        // backXx5 (I0:760;54709:1006)
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
              // formfield5To (0:761)
              left: 25.0500488281*fem,
              top: 280.5*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 354.95*fem,
                  height: 50.5*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // autogroupq7hkafT (9db7XSKPpsVwXUE7jpQ7hK)
                        width: double.infinity,
                        height: 50.5*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogroupbg4r8S5 (9db7cgfehnFwuUnAu6bG4R)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                              width: 336.95*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // biglabelFWh (I0:761;54709:25503)
                                    left: 24.9499511719*fem,
                                    top: 18.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 49*fem,
                                        height: 20*fem,
                                        child: Text(
                                          'E-mail',
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
                                    // leftxAD (I0:761;54709:25504)
                                    left: 8.9499511719*fem,
                                    top: 7.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 17*fem,
                                        height: 43*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/left-DwX.png',
                                          width: 17*fem,
                                          height: 43*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // toppartTsf (I0:761;54737:627)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: SizedBox(
                                      width: 336.95*fem,
                                      height: 15*fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // smalllabelBof (I0:761;54709:25516)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 38*fem,
                                                height: 15*fem,
                                                child: Text(
                                                  'E-mail',
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
                              // rightgEd (I0:761;54709:25506)
                              width: 18*fem,
                              height: 43*fem,
                              child: Image.asset(
                                'assets/page-1/images/right-QPB.png',
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
              // formfieldQAd (0:762)
              left: 13.5500488281*fem,
              top: 389.5*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 366.45*fem,
                  height: 50.5*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // autogroup9qfwh9j (9db7z6DediNPPaiX9w9qFw)
                        width: double.infinity,
                        height: 50.5*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogroupsns5qmj (9db84fvMExCw2HhxvrsnS5)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                              width: 348.45*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // biglabelmQV (I0:762;54709:25503)
                                    left: 36.4499511719*fem,
                                    top: 18.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 79*fem,
                                        height: 20*fem,
                                        child: Text(
                                          'Username',
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
                                    // leftfVs (I0:762;54709:25504)
                                    left: 20.4499511719*fem,
                                    top: 7.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 17*fem,
                                        height: 43*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/left.png',
                                          width: 17*fem,
                                          height: 43*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // toppartnKb (I0:762;54737:627)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: SizedBox(
                                      width: 348.45*fem,
                                      height: 15*fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // smalllabelhxM (I0:762;54709:25516)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 61*fem,
                                                height: 15*fem,
                                                child: Text(
                                                  'Username',
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
                              // rightQ65 (I0:762;54709:25506)
                              width: 18*fem,
                              height: 43*fem,
                              child: Image.asset(
                                'assets/page-1/images/right-HxV.png',
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
              // formfield8nm (0:763)
              left: 14.0500488281*fem,
              top: 499.5*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 364.95*fem,
                  height: 50.5*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        // autogroupcmyudjX (9db8QuqdCThpCcQkG5cmYu)
                        width: double.infinity,
                        height: 50.5*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogrouplij3BW9 (9db8VVYKohYMqKQC31Lij3)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                              width: 346.95*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // biglabeluww (I0:763;54709:25503)
                                    left: 34.9499511719*fem,
                                    top: 18.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 75*fem,
                                        height: 20*fem,
                                        child: Text(
                                          'Password',
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
                                    // left1zy (I0:763;54709:25504)
                                    left: 18.9499511719*fem,
                                    top: 7.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 17*fem,
                                        height: 43*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/left-89X.png',
                                          width: 17*fem,
                                          height: 43*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // toppartkBs (I0:763;54737:627)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: SizedBox(
                                      width: 346.95*fem,
                                      height: 15*fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // smalllabeltJ5 (I0:763;54709:25516)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 58*fem,
                                                height: 15*fem,
                                                child: Text(
                                                  'Password',
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
                              // rightPVj (I0:763;54709:25506)
                              width: 18*fem,
                              height: 43*fem,
                              child: Image.asset(
                                'assets/page-1/images/right.png',
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
              // undrawspecsre546x18CR (0:764)
              left: 75*fem,
              top: 591*fem,
              child: Align(
                child: SizedBox(
                  width: 281*fem,
                  height: 157*fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40*fem),
                    child: Image.asset(
                      'assets/page-1/images/undrawspecsre546x-1.png',
                      fit: BoxFit.cover,
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