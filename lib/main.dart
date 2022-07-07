import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("Confetti Widget"),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ConfettiController();
  bool isPlay = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text(
              "C O N F E T T I",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Center(
              child: MaterialButton(
            onPressed: () {
              if (isPlay) {
                _controller.stop();
              } else {
                _controller.play();
              }
              isPlay = !isPlay;
            },
            color: Colors.deepPurple[100],
            child: const Text("Click me"),
          )),
        ),
        ConfettiWidget(
          confettiController: _controller,
          blastDirection: -pi / 2,
          colors: const [Colors.deepPurple, Colors.black, Colors.yellow],
          gravity: 0.7,
          emissionFrequency: 0.2,
        )
      ],
    );
  }
}
