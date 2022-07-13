import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key, required this.resultScore, required this.resetHandler})
      : super(key: key);

  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 4) {
      resultText = 'Nice to meet you!';
    } else if (resultScore <= 6) {
      resultText = 'Wow, we have similar answers! we can be friends!';
    } else if (resultScore <= 8) {
      resultText = 'Wow, we have very similar answers! We can be good friends!';
    } else {
      resultText = 'Wow, we have the same answer! We can be close friends!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text(
              'Restart Quiz!',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
