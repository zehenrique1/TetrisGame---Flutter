import 'package:flutter/material.dart';

const BLOCK_X = 10;
const BLOCK_Y = 20;

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: BLOCK_X / BLOCK_Y,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.indigo[800],
          border: Border.all(
            width: 2.0,
            color: Colors.indigoAccent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
