import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text('Dicee'),
      ),
       body: DiceApp(),
  ),
  ));
}

class DiceApp extends StatefulWidget {
 // const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int  leftImageNumber = 2;
  int  rightImageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children:<Widget>[
            Expanded(
              child: FlatButton(
                onPressed:(){
                  setState(){
                    rightImageNumber = Random().nextInt(6)+1;
                    leftImageNumber = Random().nextInt(6)+1;  //0.5
                  };
// print('left button num$leftImageNumber');
                },
                child: Image.asset('images/dice$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(onPressed:(){
                setState(){
                  rightImageNumber = Random().nextInt(6)+1;
                  leftImageNumber = Random().nextInt(6)+1;
                };
//  print('right button got pressed');
              },
                                //##Column qo'ydim
                child: Column(
                childeren[
                Image.asset('images/dice$rightImageNumber.png'),
                  Text("bir ikki")
                ]
                )
                      
              ),
            ),
          ],
        ),
      ),
    );
  }
}




