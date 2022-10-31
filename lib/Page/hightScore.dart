import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import '../help.dart';
import '../main.dart';
import '../playerlist.dart';
import '../DB.dart';

class HighScore extends StatelessWidget {
  const HighScore({Key? key}) : super(key: key);
// A method that retrieves all the dogs from the dogs table.

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
                  Text('HIGHSCORES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 250.0,
                    child: PlayerList(),
                  ),
                  MenueBoutton(
                      text: "BACK TO MENU",
                      textColor: Colors.white,
                      destination: MyHomePage(
                        title: "",
                      )),
                  ButtonDelete(text: "DROP TABLE")
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

class ButtonDelete extends StatefulWidget {
  final String text;
  final Color textColor;
  final Color borderColor;
  final Color peser;
  const ButtonDelete(
      {super.key,
      required this.text,
      this.textColor = Colors.red,
      this.borderColor = Colors.red,
      this.peser = Colors.red});
  @override
  State<ButtonDelete> createState() => _ButtonDelete();
}

class _ButtonDelete extends State<ButtonDelete> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: (OutlinedButton(
        onHover: null,
        style: OutlinedButton.styleFrom(
          primary: widget.textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          fixedSize: const Size(500, 50),
          side: const BorderSide(width: 2.0, color: Colors.cyan),
        ),
        onPressed: () {
          highScorer.DropDB();
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MyHomePage(
                      title: "",
                    )),
          );
        },
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 20),
        ),
      )),
    );
  }
}
