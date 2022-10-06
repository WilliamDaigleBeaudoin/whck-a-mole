import 'package:flutter/material.dart';
import '../main.dart';

class ScoreValidator extends StatelessWidget {
  const ScoreValidator({super.key});

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
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage(
                                title: '',
                              )),
                    );
                  }, // Image tapped
                  child: Image.asset(
                    'images/backIcon.png',
                    fit: BoxFit.cover, // Fixes border issues
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                const Text(
                  "BACK",
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.cyan),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'images/validate.png',
                  width: 100.0,
                  height: 100.0,
                ),
                const Text('SCORE VALIDATOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('DATE: ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                      Flexible(
                        child: Container(
                          width: 200,
                          child: TextFormField(
                              style: TextStyle(color: Colors.cyan),
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.cyan),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.cyan),
                                  ),
                                  border: UnderlineInputBorder(),
                                  hintText: 'DD/MM/YYYY',
                                  hintStyle: TextStyle(color: Colors.cyan))),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('NAME: ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                      Flexible(
                        child: Container(
                          width: 200,
                          child: TextFormField(
                              style: TextStyle(color: Colors.cyan),
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan),
                                ),
                                border: UnderlineInputBorder(),
                              )),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('SCORE: ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                      Flexible(
                        child: Container(
                          width: 200,
                          child: TextFormField(
                              style: TextStyle(color: Colors.cyan),
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.cyan),
                                ),
                                border: UnderlineInputBorder(),
                              )),
                        ),
                      ),
                    ]),
                OutlinedButton(
                  onHover: null,
                  style: OutlinedButton.styleFrom(
                    primary: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    fixedSize: Size(500, 50),
                    side: BorderSide(width: 2.0, color: Colors.cyan),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "VALIDATE SCORE",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 20,
                  endIndent: 20,
                ),
                const Text("Score exist:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))
              ],
            ),
          ]),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 15, 26, 41),
    );
  }
}
