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
          {'answer': 'Answer 3.1'},
          {'answer': 'Answer 3.2',},
          {'answer': 'Answer 3.3', 'isCorrect': 1,},
        ]
    ),
    Question(
        title: 'Question 4',
        answers: [
          {'answer': 'Answer 4.1', 'isCorrect': 1,},
          {'answer': 'Answer 4.2',},
          {'answer': 'Answer 4.3',},
        ]
    ),
    Question(
        title: 'Question 5',
        answers: [
          {'answer': 'Answer 5.1',},
          {'answer': 'Answer 5.2', 'isCorrect': 1,},
          {'answer': 'Answer 5.3',},
        ]
    ),
    Question(
        title: 'Question 6',
        answers: [
          {'answer': 'Answer 6.1',},
          {'answer': 'Answer 6.2',},
          {'answer': 'Answer 6.3', 'isCorrect': 1},
        ]
    ),
    Question(
        title: 'Question 7',
        answers: [
          {'answer': 'Answer 7.1', 'isCorrect': 1,},
          {'answer': 'Answer 7.2',},
          {'answer': 'Answer 7.3',},
        ]
    ),
    Question(
        title: 'Question 8',
        answers: [
          {'answer': 'Answer 8.1',},
          {'answer': 'Answer 8.2', 'isCorrect': 1,},
          {'answer': 'Answer 8.3',},
        ]
    ),
    Question(
        title: 'Question 9',
        answers: [
          {'answer': 'Answer 9.1',},
          {'answer': 'Answer 9.2',},
          {'answer': 'Answer 9.3', 'isCorrect': 1,},
        ]
    ),
  ];

  List <Question> get questions => [..._data];
}