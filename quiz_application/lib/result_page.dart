import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final int totalQuestions;


  ResultPage({required this.score, required this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Your Score: $score / $totalQuestions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Restart'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ]
        )
      )
    );
  }
}