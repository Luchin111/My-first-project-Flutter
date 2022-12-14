import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
    void _answerQuestion() {
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    }
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    var questions = [
      {
        'questionText':'What\'s your favorite color?',
        'answers':['Black','Red','Green','White']
      },
      {
        'questionText':'What\'s your favorite color?',
        'answers':['Black','Red','Green','White']
      },
    ];
    return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text('My firts App!'),
          ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion)
          ],
        ),
      ),
    );

  }
}