import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            textStyle: MaterialStateProperty.all(
              const TextStyle(color: Colors.white),
            )),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
