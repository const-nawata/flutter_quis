import 'package:flutter/foundation.dart';

class Question{
  final title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData{
  final _data = [
    Question(
        title: 'Question 1',
        answers: [
          {'answer': 'Answer 1.1', 'isCorrect': 1},
          {'answer': 'Answer 1.2',},
          {'answer': 'Answer 1.3',},
        ]
    ),
    Question(
        title: 'Question 2',
        answers: [
          {'answer': 'Answer 2.1',},
          {'answer': 'Answer 2.2', 'isCorrect': 1},
          {'answer': 'Answer 2.3',},
        ]
    ),
    Question(
        title: 'Question 3',
        answers: [
          {'answer': 'Answer 3.1', 'isCorrect': 1},
          {'answer': 'Answer 3.2',},
          {'answer': 'Answer 3.3',},
        ]
    ),
    Question(
        title: 'Question 4',
        answers: [
          {'answer': 'Answer 4.1',},
          {'answer': 'Answer 4.2',},
          {'answer': 'Answer 4.3', 'isCorrect': 1},
        ]
    ),
  ];

  List <Question> get questions => [..._data];
}