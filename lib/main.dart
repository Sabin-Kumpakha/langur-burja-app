import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> diceNumber = List<int>.filled(6, 1);

  void changeDice() {
    Random random = new Random();
    //setState for live change
    setState(() {
      diceNumber = [
        random.nextInt(6) + 1,
        random.nextInt(6) + 1,
        random.nextInt(6) + 1,
        random.nextInt(6) + 1,
        random.nextInt(6) + 1,
        random.nextInt(6) + 1,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Langur Burja App"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            addRepaintBoundaries: Paint.enableDithering,
            children: [
              Container(
                decoration: BoxDecoration(
                  //border outside
                  border: Border.all(
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  "assets/${diceNumber[0]}.jpg",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  //border outside
                  border: Border.all(
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  "assets/${diceNumber[1]}.jpg",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  //border outside
                  border: Border.all(
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  "assets/${diceNumber[2]}.jpg",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  //border outside
                  border: Border.all(
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  "assets/${diceNumber[3]}.jpg",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  //border outside
                  border: Border.all(
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  "assets/${diceNumber[4]}.jpg",
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  //border outside
                  border: Border.all(
                    width: 5,
                  ),
                ),
                child: Image.asset(
                  "assets/${diceNumber[5]}.jpg",
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: const Icon(Icons.restore),
          onPressed: () {
            changeDice();
          },
        ),
      ),
    );
  }
}
