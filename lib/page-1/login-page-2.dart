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
        // loginpage2dJZ (0:730)
        width: double.infinity,
        height: 932*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // pexelsphoto69524212xLq (0:731)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 430*fem,
                  height: 942*fem,
                  child: Image.asset(
                    'assets/page-1/images/pexels-photo-6952421-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle84Ps (0:732)
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
                        colors: <Color>[Color(0xffa75fe3), Color(0x99a75fe3), Color(0xffa75fe3)],
                        stops: <double>[0, 0.564, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // welcomebackKKo (0:733)
              left: 36*fem,
              top: 156*fem,
              child: Align(
                child: SizedBox(
                  width: 235*fem,
                  height: 37*fem,
                  child: Text(
                    'Welcome back! \n',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 30*ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xfff1eaff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group1PaZ (0:734)
              left: 0*fem,
              top: 334*fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 430*fem,
                  height: 598*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // vectorHvq (0:735)
                        left: 371*fem,
                        top: 315*fem,
                        child: Align(
                          child: SizedBox(
                            width: 25*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-BQ5.png',
                              width: 25*fem,
                              height: 20*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle9DJh (0:736)
                        left: 0*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 430*fem,
                            height: 598*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.only (
                                  topLeft: Radius.circular(50*fem),
                                  topRight: Radius.circular(50*fem),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // donthaveanaccountGXs (0:737)
                        left: 64*fem,
                        top: 526*fem,
                        child: Align(
                          child: SizedBox(
                            width: 227*fem,
                            height: 25*fem,
                            child: Text(
                              'Don’t have an account? ',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff535353),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // forgotmypasswordgbb (0:738)
                        left: 268*fem,
                        top: 361*fem,
                        child: Align(
                          child: SizedBox(
                            width: 145*fem,
                            height: 19*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Forgot my password',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff4a4646),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // pleasetypeyourpasswordhmb (0:739)
                        left: 17*fem,
                        top: 260*fem,
                        child: Align(
                          child: SizedBox(
                            width: 256*fem,
                            height: 25*fem,
                            child: Text(
                              'Please type your Password',
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
                        // pleasetypeyouremailorusernameb (0:740)
                        left: 16*fem,
                        top: 153*fem,
                        child: Align(
                          child: SizedBox(
                            width: 350*fem,
                            height: 25*fem,
                            child: Text(
                              'Please type your E-mail or Username',
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
                        // logintoyouraccounttbB (0:741)
                        left: 89*fem,
                        top: 94*fem,
                        child: Align(
                          child: SizedBox(
                            width: 250*fem,
                            height: 30*fem,
                            child: Text(
                              'Login to your account',
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
                        // vectorz8R (0:742)
                        left: 184*fem,
                        top: 27*fem,
                        child: Align(
                          child: SizedBox(
                            width: 62*fem,
                            height: 4*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-GSu.png',
                              width: 62*fem,
                              height: 4*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // singup6x9 (0:743)
                        left: 293*fem,
                        top: 526*fem,
                        child: Align(
                          child: SizedBox(
                            width: 76*fem,
                            height: 25*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Sing Up',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xffa965e3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // buttonzXj (0:744)
                        left: 16*fem,
                        top: 426*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 399*fem,
                            height: 49*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xffa75fe3),
                              borderRadius: BorderRadius.circular(15*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
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
                        // formfieldFCm (0:745)
                        left: 24.0500488281*fem,
                        top: 291.5*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: SizedBox(
                            width: 361.95*fem,
                            height: 50.5*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  // autogroupsbe19Z3 (9db68UeHzqWQpBQzQwSBE1)
                                  width: double.infinity,
                                  height: 50.5*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // autogroupwxhsHv9 (9db6DZLAJq341N5Pj8WXHs)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: 343.95*fem,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // biglabelRFf (I0:745;54709:25503)
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
                                              // lefthys (I0:745;54709:25504)
                                              left: 18.9499511719*fem,
                                              top: 7.5*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 17*fem,
                                                  height: 43*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/left-yMK.png',
                                                    width: 17*fem,
                                                    height: 43*fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // toppartbpM (I0:745;54737:627)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: SizedBox(
                                                width: 343.95*fem,
                                                height: 15*fem,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      // smalllabel83b (I0:745;54709:25516)
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
                                        // right1NH (I0:745;54709:25506)
                                        width: 18*fem,
                                        height: 43*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/right-6eM.png',
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
                        // formfieldY7K (0:746)
                        left: 1.5500488281*fem,
                        top: 184.5*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: SizedBox(
                            width: 384.45*fem,
                            height: 50.5*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  // autogrouplhrtpKj (9db6c3ggvj9NCqJUz3LHRT)
                                  width: double.infinity,
                                  height: 50.5*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // autogrouphqc5kUH (9db6gxiAfoSeDC5ET9HqC5)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: 366.45*fem,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // biglabelsYu (I0:746;54709:25503)
                                              left: 57.4499511719*fem,
                                              top: 18.5*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 133*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'E-mail/Username',
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
                                              // leftZRj (I0:746;54709:25504)
                                              left: 41.4499511719*fem,
                                              top: 7.5*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 17*fem,
                                                  height: 43*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/left-aUy.png',
                                                    width: 17*fem,
                                                    height: 43*fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // toppartUHo (I0:746;54737:627)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: SizedBox(
                                                width: 366.45*fem,
                                                height: 15*fem,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      // smalllabelQhF (I0:746;54709:25516)
                                                      left: 0*fem,
                                                      top: 0*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 103*fem,
                                                          height: 15*fem,
                                                          child: Text(
                                                            'E-mail/Username',
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
                                        // right7Lm (I0:746;54709:25506)
                                        width: 18*fem,
                                        height: 43*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/right-1wF.png',
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
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // bareLh (I0:748;54601:414)
              left: 10*fem,
              top: 22*fem,
              child: SizedBox(
                width: 398*fem,
                height: 25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // N1o (I0:748;54601:414;54516:1338)
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
                      // vectorsjF (I0:748;54601:414;54516:1337)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.88*fem, 3*fem),
                      width: 23.13*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-WY1.png',
                        width: 23.13*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // vectornbK (I0:748;54601:414;54516:1336)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 3.5*fem),
                      width: 25*fem,
                      height: 17.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-fTw.png',
                        width: 25*fem,
                        height: 17.5*fem,
                      ),
                    ),
                    Container(
                      // vector6ru (I0:748;54601:414;54516:1335)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                      width: 25*fem,
                      height: 12.5*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-ySZ.png',
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