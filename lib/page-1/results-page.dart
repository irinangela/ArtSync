import 'package:flutter/material.dart';
import 'package:myapp/page-1/set-a-challenge.dart';

class Background4 extends StatelessWidget {
  const Background4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 932,
      width: 430,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/page-1/images/Background4.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double fontSize;

  const SubmitButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize)
        ),
    );
  }
}

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background4(),
          Center(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'And the winner of\nthis challenge is...',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Congratulations!',
                    style: TextStyle(
                      color: Color(0xFFA75FE3),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 330,
                    height: 110, 
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: const Color.fromARGB(103, 241, 234, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color.fromARGB(137, 207, 162, 247),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/page-1/images/avatar2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '@username1',
                              style: TextStyle(fontSize: 24),
                            ),
                            SizedBox(height: 4),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 390,
                    height: 200, 
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: const Color.fromARGB(103, 241, 234, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color.fromARGB(137, 207, 162, 247),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          spreadRadius: 1,
                        ),
                      ],
                    ),

                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Table(
                              border: const TableBorder(
                                verticalInside: BorderSide(width: 1, color: Color(0xFFA75FE3)), 
                              ),
                            children: const [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Center(child: Text(
                                      'Results',
                                      style: TextStyle(
                                        color: Color(0xFFA75FE3),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,))),
                                    )),
                                  TableCell(child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Center(child: Text(
                                      'Points',
                                      style: TextStyle(
                                        color: Color(0xFFA75FE3),
                                        fontSize: 20,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,))),
                                  )),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('1st: @username1',
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                  )),
                                  TableCell(child: Center(child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('+50pnts',
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                  ))),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('2nd: @username2',
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                  )),
                                  TableCell(child: Center(child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('+25pnts',
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                  ))),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('3rd: @username3',
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                  )),
                                  TableCell(child: Center(child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child:Text('+10pnts',
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                  ))),
                                ],
                              ),
                            ],
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
            top: 750,
            left: 220,
            child: SizedBox(
                width: 160,
                height: 50,
              child: SubmitButton(
                onPressed: () { 
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SetChallenge()),
                  );
                },
                text: 'Create New',
                fontSize: 20                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
