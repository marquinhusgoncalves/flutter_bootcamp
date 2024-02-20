import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = 6;
                print('Left button got pressed.');
              });
            },
            child: Image.asset('images/dice${leftDiceNumber}.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                rightDiceNumber = 2;
                print('Right button got pressed.');
              });
            },
            child: Image.asset('images/dice${rightDiceNumber}.png'),
          ),
        ),
      ],
    );
  }
}
