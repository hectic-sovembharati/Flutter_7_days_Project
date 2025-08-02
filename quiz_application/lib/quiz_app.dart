import 'package:flutter/material.dart';
import 'result_page.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int questionIndex = 0;
  int selectionOption = -1;
  int score = 0;

  List<Map<String, Object>> questions = [
    {
      'question': 'What is the capital of France?',
      'options': ['Paris', 'London', 'Berlin', 'Madrid'],
      'answer': 'Paris',
    },
    {
      'question': 'What is the capital of Germany?',
      'options': ['Paris', 'London', 'Berlin', 'Madrid'],
      'answer': 'Berlin',
    },
    {
      'question': 'What is the capital of Italy?',
      'options': ['Rome', 'London', 'Berlin', 'Madrid'],
      'answer': 'Rome',
    }
  ];

  void submitAnswer() {
    if (selectionOption == -1) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select an option')),
      );
      return;
    }

    // Get selected option text
    String selectedText = (questions[questionIndex]['options'] as List<String>)[selectionOption];
    String correctAnswer = questions[questionIndex]['answer'] as String;

    if (selectedText == correctAnswer) {
      score++;
    }

    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
        selectionOption = -1;
      });
    } else {
             Navigator.pushReplacement(
         context,
         MaterialPageRoute(
           builder: (context) => ResultPage(score: score, totalQuestions: questions.length),
         ),
       );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Q${questionIndex + 1}: ${questions[questionIndex]['question']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Column(
              children: List.generate(
                (questions[questionIndex]['options'] as List).length,
                (index) {
                  return RadioListTile(
                    title: Text((questions[questionIndex]['options'] as List)[index]),
                    value: index,
                    groupValue: selectionOption,
                    onChanged: (value) {
                      setState(() {
                        selectionOption = value!;
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submitAnswer,
              child: Text(questionIndex == questions.length - 1 ? 'Finish' : 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}
