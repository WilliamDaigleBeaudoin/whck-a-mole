import 'package:flutter/material.dart';

class MenueBoutton extends StatefulWidget {
  final String text;
  final Color textColor;
  final Color borderColor;
  final Color peser;
  final Widget destination;
  const MenueBoutton(
      {super.key,
      required this.text,
      this.textColor = Colors.cyan,
      this.borderColor = Colors.white,
      this.peser = Colors.cyan,
      required this.destination});
  @override
  State<MenueBoutton> createState() => _MenueBoutton();
}

class _MenueBoutton extends State<MenueBoutton> {
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.destination),
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

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.cyan
      ..style = PaintingStyle.fill;
    var paint2 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(const Offset(0, 0), 50, paint1);
    canvas.drawCircle(const Offset(0, 0), 10, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
