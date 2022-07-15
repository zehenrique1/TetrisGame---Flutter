import 'package:flutter/material.dart';
import 'package:tetrisgame/widgets/score.dart';

//Run | Debug
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: Tetris(),
      );
}

class Tetris extends StatefulWidget {
  const Tetris({Key? key}) : super(key: key);

  @override
  _TetrisState createState() => _TetrisState();
}

class _TetrisState extends State<Tetris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tetris'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          children: [
            ScoreBar(),
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    flex:4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
                      child: Container(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
