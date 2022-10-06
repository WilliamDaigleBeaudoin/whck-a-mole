import 'package:flutter/material.dart';
import '../main.dart';
import 'package:avatar_glow/avatar_glow.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Container(
          width: 500.0,
          height: 700.0,
          color: const Color.fromARGB(186, 16, 27, 44),
          child: Stack(children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                'images/backgroundPattern.png',
                repeat: ImageRepeat.repeat,
                color: const Color.fromARGB(117, 31, 53, 86),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60.0, 0, 60.0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Text('ABOUT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut varius sapien, a porta neque. Donec ullamcorper odio non massa hendrerit pulvinar. Curabitur felis lacus, ullamcorper ac bibendum eget, congue eget justo. Curabitur porta velit quam. Pellentesque elementum ut nulla sit amet tincidunt. Curabitur ac elementum dui. Ut eget odio tortor. Nam tempor porttitor lectus, id varius magna. Quisque ut arcu sit amet metus egestas imperdiet.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      )),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                    indent: 20,
                    endIndent: 20,
                  ),
                  AvatarGlow(
                      endRadius: 50.0,
                      child: BackImageButton(
                          destination: MyHomePage(
                        title: 'Whack-a-mole',
                      ))),
                ],
              ),
            ),
          ]),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 15, 26, 41),
    );
  }
}

class BackImageButton extends StatefulWidget {
  final Color borderColor;
  final Color peser;
  final Widget destination;
  const BackImageButton(
      {super.key,
      this.borderColor = Colors.white,
      this.peser = Colors.white,
      required this.destination});
  @override
  State<BackImageButton> createState() => _BackImageButton();
}

class _BackImageButton extends State<BackImageButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: (OutlinedButton(
        onHover: null,
        style: OutlinedButton.styleFrom(
          shape: const CircleBorder(),
          fixedSize: const Size(50, 50),
          side: const BorderSide(width: 2.0, color: Colors.white),
          backgroundColor: Colors.white, //<-- SEE HERE
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.destination),
          );
        },
        child: const Text(
          "",
        ),
      )),
    );
  }
}
