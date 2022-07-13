import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // MARK: implement createState
    return _MyAppState();
    // throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'qutestionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Orange', 'score': 2},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Green', 'score': 4},
      ],
    },
    {
      'qutestionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'Running', 'score': 4},
        {'text': 'Swimming', 'score': 3},
        {'text': 'Badminton', 'score': 2},
        {'text': 'football', 'score': 1},
      ],
    },
    {
      'qutestionText': 'Who\'s your favorite friend?',
      'answers': [
        {'text': 'Tom', 'score': 1},
        {'text': 'Oscar', 'score': 1},
        {'text': 'Alex', 'score': 1},
        {'text': 'Will', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
        // print('We have more questions!');
      });
    } else {
      // print('No more questions!');
    }
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
                resultScore: _totalScore,
                resetHandler: _resetQuiz,
              ),
      ),
    );
  }
}
