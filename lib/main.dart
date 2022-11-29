import 'package:dice_game/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          shadowColor: Colors.black12,
          backgroundColor: Colors.redAccent,
          title: Text("Dice"),
        ),
        body: screen(),
      ),
    ),
  );
}


class screen extends StatefulWidget {

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {

  int shuffle_left =1;
  int shuffle_right =1;
  void shufflelikeadick(){
    shuffle_right = Random().nextInt(6)+1;
    shuffle_left = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  setState(() {
                    shufflelikeadick();
                  });
                },
                child: Image.asset("images/dice$shuffle_left.png"),),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){
                  setState(() {
                    shufflelikeadick();
                  });
                },
                  child: Image.asset("images/dice$shuffle_right.png"),),
              ))
        ],
      ),
    );
  }
}






