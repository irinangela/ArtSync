import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models.dart';
import 'package:myapp/page-1/home-page.dart';
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
      child: Text(text, style: TextStyle(fontSize: fontSize)),
    );
  }
}

class Results extends StatelessWidget {
  final UserData userData;
  final List<Map<String, dynamic>> submissions;
  final String groupId;

  const Results({
    Key? key,
    required this.userData,
    required this.submissions,
    required this.groupId,
  }) : super(key: key);

  List<String> findWinners(List<Map<String, dynamic>> submissions) {
    List<String> winners = [];

    // Sort submissions by rating in descending order
    submissions.sort((a, b) => (b['rating'] ?? 0).compareTo(a['rating'] ?? 0));

    // Extract usernames of the top three winners
    for (int i = 0; i < 3 && i < submissions.length; i++) {
      winners.add(submissions[i]['username'] ?? '');
    }

    return winners;
  }

  @override
  Widget build(BuildContext context) {
    List<String> winners = findWinners(submissions);
    String winnerUsername = winners.isNotEmpty ? winners.first : '';
    bool isCurrentUserWinner = winners.contains(userData.currentUser?.username);

    return FutureBuilder<String>(
        future: userData.fetchWinnerAvatar(winnerUsername),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            String winnerAvatar = snapshot.data ?? '';

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
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(winnerAvatar),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '@${winners[0]}',
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                    const SizedBox(height: 4),
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
                                      verticalInside: BorderSide(
                                          width: 1, color: Color(0xFFA75FE3)),
                                    ),
                                    children: [
                                      const TableRow(
                                        children: [
                                          TableCell(
                                              child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Center(
                                                child: Text('Results',
                                                    style: TextStyle(
                                                      color: Color(0xFFA75FE3),
                                                      fontSize: 20,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ))),
                                          )),
                                          TableCell(
                                              child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Center(
                                                child: Text('Points',
                                                    style: TextStyle(
                                                      color: Color(0xFFA75FE3),
                                                      fontSize: 20,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ))),
                                          )),
                                        ],
                                      ),
                                      TableRow(
                                        children: [
                                          TableCell(
                                              child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1st: @${winners[0]}',
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                )),
                                          )),
                                          const TableCell(
                                              child: Center(
                                                  child: Padding(
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
                                          TableCell(
                                              child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('2nd: @${winners[1]}',
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                )),
                                          )),
                                          const TableCell(
                                              child: Center(
                                                  child: Padding(
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
                                          TableCell(
                                              child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('3rd: @${winners[2]}',
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                )),
                                          )),
                                          const TableCell(
                                              child: Center(
                                                  child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('+10pnts',
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
                    left: 30,
                    child: SizedBox(
                      width: 160,
                      height: 50,
                      child: SubmitButton(
                        onPressed: () async {
                          if (isCurrentUserWinner) {
                            // Update points for the current user in Firestoe
                            await userData.updatePointsForCurrentUser(winners);
                          }
                          await FirebaseFirestore.instance
                              .collection('Groups')
                              .doc(groupId)
                              .update({
                            'ChallengeID': '0',
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(userData: userData)),
                          );
                        },
                        text: 'Back',
                        fontSize: 20,
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
                          onPressed: () async {
                            if (isCurrentUserWinner) {
                              // Update points for the current user in Firestore
                              await userData
                                  .updatePointsForCurrentUser(winners);
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SetChallenge(
                                  userData: userData,
                                  groupId: groupId,
                                ),
                              ),
                            );
                          },
                          text: 'Create New',
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          } else {
            // Handle loading or other states
            return const CircularProgressIndicator();
          }
        });
  }
}
