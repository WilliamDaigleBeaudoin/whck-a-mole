import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'DB.dart';
import '../main.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlayerListState();
}

class PlayerListState extends State<PlayerList> {
  late List<Map> list;

  @override
  void initState() {
    list = HighScorer().GetList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, int index) {
        String dateTime = list[index]["datetime"];
        String nom = list[index]["nom"];
        int score = list[index]["score"];
        int id = list[index]["id"];
        return Card(
          color: const Color.fromARGB(255, 43, 43, 43),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'id:$id $dateTime $nom $score',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
