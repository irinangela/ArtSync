import 'package:flutter/material.dart';
import 'package:myapp/page-1/home-page.dart';

class Background2 extends StatelessWidget {
  const Background2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 932,
      width: 430,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/page-1/images/Background2.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class AvatarUser extends StatelessWidget {
  final String avatarImagePath;
  final bool isSelected;
  final Function() onTap;

  const AvatarUser({
    Key? key,
    required this.avatarImagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(avatarImagePath),
            backgroundColor: isSelected ? Colors.blue : null,
          ),
          const SizedBox(height: 8),
        ],
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

class ChooseAvatar extends StatefulWidget {
  const ChooseAvatar({Key? key}) : super(key: key);

  @override
  _ChooseAvatarState createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
  late String selectedAvatar;

  @override
  void initState() {
    super.initState();
    selectedAvatar = '';
  }

  @override
  Widget build(BuildContext context) {
    final List<String> avatars = List.generate(
        23, (index) => 'assets/page-1/images/avatar${index + 1}.png');

    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Background2(),
          ),
          Positioned(
            top: 200,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Now it's time to choose an Avatar!\n",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Just click on your favorite",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(avatars.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AvatarUser(
                            avatarImagePath: avatars[index],
                            isSelected: avatars[index] == selectedAvatar,
                            onTap: () {
                              setState(() {
                                if (selectedAvatar == avatars[index]) {
                                  selectedAvatar = '';
                                } else {
                                  selectedAvatar = avatars[index];
                                }
                              });
                            },
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        if (selectedAvatar.isNotEmpty)
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.purple,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.purple.withOpacity(1),
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage(selectedAvatar),
                            ),
                          ),
                        if (selectedAvatar.isNotEmpty)
                          const CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.transparent,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
          Positioned(
            top: 750,
            left: 250,
            child: SizedBox(
                width: 120,
                height: 50,
              child: SubmitButton(
                onPressed: () { 
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                text: 'Sign Up',
                fontSize: 20                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
