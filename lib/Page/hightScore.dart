import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../help.dart';
import '../main.dart';

class HighScore extends StatelessWidget {
  const HighScore({Key? key}) : super(key: key);

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
                children: <Widget>[
                  const Text('HIGHSCORES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 250.0,
                    child: ListView.builder(
                      itemBuilder: (context, position) {
                        DateTime now = DateTime.now();
                        String formattedDate =
                            DateFormat('yyyy-MM-dd – kk:mm:ss').format(now);
                        if (position % 2 == 0) {
                          return Card(
                            color: const Color.fromARGB(255, 43, 43, 43),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                '$formattedDate PLAYER 1                            ${100 - position}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        } else {
                          return Card(
                            color: const Color.fromARGB(255, 93, 93, 93),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                '$formattedDate PLAYER 1                            ${100 - position}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        }
                      },
                      itemCount: 100,
                    ),
                  ),
                  const MenueBoutton(
                      text: "BACK TO MENU",
                      textColor: Colors.white,
                      destination: MyHomePage(
                        title: "",
                      ))
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
