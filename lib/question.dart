import 'package:flutter/material.dart';

class Question extends StatefulWidget {


  Question ({Key key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("?/???　問題番号???"),
        backgroundColor: Colors.lightBlue[400],
        actions: [],
      ),
    );
  }
  }