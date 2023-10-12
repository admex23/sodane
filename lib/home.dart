import 'package:beautiful_hadiya/learn_flutter_page.dart';
import 'package:flutter/material.dart';
import 'culture.dart';
import 'culturetools1.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/haddiya01.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(94, 139, 108, 96),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 250, left: 30, right: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  AnimatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const History();
                        }),
                      );
                    },
                    buttonText: '   History of Hadiya   ',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Culturepage();
                        }),
                      );
                    },
                    buttonText: '   Culture of Hadiya   ',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AnimatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const Culturetools();
                        }),
                      );
                    },
                    buttonText: '   Digital Museum of Culture   ',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class AnimatedButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String buttonText;

  const AnimatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _animationController.forward();
      },
      onTapUp: (_) {
        _animationController.reverse();
      },
      onTapCancel: () {
        _animationController.reverse();
      },
      onTap: widget.onPressed,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(250),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            primary: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              widget.buttonText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
