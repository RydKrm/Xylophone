import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void playSound(int nodeNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$nodeNumber.wav'));
  }

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Xylophone',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          body: SafeArea(
            child: Center(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    
                    ),
                onPressed: (){
                 playSound(1);
                },
                child: const Text(
                  'Play Me',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                 ),
                ), 
                TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan, foregroundColor: Colors.white),
              onPressed: () {
                playSound(2);
              },
              child: const Text(
                'Play Me',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ), 
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow, foregroundColor: Colors.white),
              onPressed: () {
                playSound(3);
              },
              child: const Text(
                'Play Me',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ), 
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
              onPressed: () {
                playSound(4);
              },
              child: const Text(
                'Play Me',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ), 
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.orange, foregroundColor: Colors.white),
              onPressed: () {
                playSound(5);
              },
              child: const Text(
                'Play Me',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ), 
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.purple, foregroundColor: Colors.white),
              onPressed: () {
                playSound(6);
              },
              child: const Text(
                'Play Me',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ), 
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.pink, foregroundColor: Colors.white),
              onPressed: () {
                playSound(7);
              },
              child: const Text(
                'Play Me',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),   
               ],
              )
            )
           ),
          ),
    );
  }
}
