import 'package:flutter/material.dart';
import 'package:math_quiz_app/helpers/constants.dart';

import 'fifth_grade_scoreboard.dart';

class FifthGradeMixedTest extends StatefulWidget {
  final int? score;
  final int? wrong;
  const FifthGradeMixedTest({Key? key, this.score, this.wrong})
      : super(key: key);

  @override
  _FifthGradeMixedTestState createState() => _FifthGradeMixedTestState();
}

class _FifthGradeMixedTestState extends State<FifthGradeMixedTest> {
  late int _score;
  late int _wrong;
  var question = MixedList(3);
  late int num1 = question[0].GeneratedNumbers[0];
  late int num2 = question[0].GeneratedNumbers[1];
  late String symbol = question[0].symbol;
  Color _colorb1 = Color(0xff30445c);
  Color _colorb2 = Color(0xff30445c);
  Color _colorb3 = Color(0xff30445c);
  Color _colorb4 = Color(0xff30445c);
  Color scafbg = Color(0xff242b3e);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scafbg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Color(0xffe78230),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Score ${widget.score}",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Trailer Park Girl',
                          color: Colors.white),
                    ),
                  )),
              Container(
                  height: 35,
                  width: 140,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color(0xffe78230),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "remaining right ${4 - widget.wrong!}",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Trailer Park Girl',
                          color: Colors.white),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xffe78230),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "$num1 ${symbol} $num2",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (question[0].GeneratedAnswers[0].answer == false)
                    setState(() {
                      _colorb1 = Colors.red;
                      _score = widget.score! + 0;
                      _wrong = widget.wrong! + 1;
                      if (_wrong < 4) {
                        showCorrectAnswer(context);
                        nextQuestionWrongAnswer(context);
                      } else if (_wrong == 4) {
                        setState(() {
                          showCorrectAnswer(context);
                          navigateToScoreboard(context);
                        });
                      }
                    });
                  if (question[0].GeneratedAnswers[0].answer == true) {
                    setState(() {
                      _colorb1 = Colors.green;
                      nextQuestionCorrect(context);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: _colorb1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    textStyle: TextStyle(fontSize: 30),
                    fixedSize: Size(275, 100)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffe78230),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "A",
                            style: TextStyle(
                                fontFamily: 'Trailer Park Girl', fontSize: 50),
                          ),
                        ),
                      ),
                      Text(
                        "${question[0].GeneratedAnswers[0].value}",
                        style: TextStyle(fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (question[0].GeneratedAnswers[1].answer == false)
                    setState(() {
                      _colorb2 = Colors.red;
                      _score = widget.score! + 0;
                      _wrong = widget.wrong! + 1;
                      if (_wrong < 4) {
                        showCorrectAnswer(context);
                        nextQuestionWrongAnswer(context);
                      } else if (_wrong == 4) {
                        setState(() {
                          showCorrectAnswer(context);
                          navigateToScoreboard(context);
                        });
                      }
                    });
                  if (question[0].GeneratedAnswers[1].answer == true) {
                    setState(() {
                      _colorb2 = Colors.green;
                      nextQuestionCorrect(context);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: _colorb2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    textStyle: TextStyle(fontSize: 30),
                    fixedSize: Size(275, 100)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffe78230),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "B",
                            style: TextStyle(
                                fontFamily: 'Trailer Park Girl', fontSize: 50),
                          ),
                        ),
                      ),
                      Text(
                        "${question[0].GeneratedAnswers[1].value}",
                        style: TextStyle(fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (question[0].GeneratedAnswers[2].answer == false)
                    setState(() {
                      _colorb3 = Colors.red;
                      _score = widget.score! + 0;
                      _wrong = widget.wrong! + 1;
                      if (_wrong < 4) {
                        showCorrectAnswer(context);
                        nextQuestionWrongAnswer(context);
                      } else if (_wrong == 4) {
                        setState(() {
                          showCorrectAnswer(context);
                          navigateToScoreboard(context);
                        });
                      }
                    });
                  if (question[0].GeneratedAnswers[2].answer == true) {
                    setState(() {
                      _colorb3 = Colors.green;
                      nextQuestionCorrect(context);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: _colorb3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    textStyle: TextStyle(fontSize: 30),
                    fixedSize: Size(275, 100)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffe78230),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "C",
                            style: TextStyle(
                                fontFamily: 'Trailer Park Girl', fontSize: 50),
                          ),
                        ),
                      ),
                      Text(
                        "${question[0].GeneratedAnswers[2].value}",
                        style: TextStyle(fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (question[0].GeneratedAnswers[3].answer == false)
                    setState(() {
                      _colorb4 = Colors.red;
                      _score = widget.score! + 0;
                      _wrong = widget.wrong! + 1;
                      if (_wrong < 4) {
                        showCorrectAnswer(context);
                        nextQuestionWrongAnswer(context);
                      } else if (_wrong == 4) {
                        setState(() {
                          showCorrectAnswer(context);
                          navigateToScoreboard(context);
                        });
                      }
                    });
                  if (question[0].GeneratedAnswers[3].answer == true) {
                    setState(() {
                      _colorb4 = Colors.green;
                      nextQuestionCorrect(context);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: _colorb4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    textStyle: TextStyle(fontSize: 30),
                    fixedSize: Size(275, 100)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffe78230),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "D",
                            style: TextStyle(
                                fontFamily: 'Trailer Park Girl', fontSize: 50),
                          ),
                        ),
                      ),
                      Text(
                        "${question[0].GeneratedAnswers[3].value}",
                        style: TextStyle(fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void nextQuestionCorrect(BuildContext context) {
    _score = widget.score! + 5;
    _wrong = widget.wrong! + 0;
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => FifthGradeMixedTest(
                    score: _score,
                    wrong: _wrong,
                  )),
          (route) => false);
    });
  }

  void nextQuestionWrongAnswer(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => FifthGradeMixedTest(
                    score: _score,
                    wrong: _wrong,
                  )),
          (route) => false);
    });
  }

  void navigateToScoreboard(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FifthGradeScoreboard(
                  score: _score,
                  level: 1,
                  method: Methods.mixed,
                )),
      );
    });
  }

  void showCorrectAnswer(BuildContext context) {
    if (question[0].GeneratedAnswers[0].answer == true) {
      _colorb1 = Colors.green;
    }
    if (question[0].GeneratedAnswers[1].answer == true) {
      _colorb2 = Colors.green;
    }
    if (question[0].GeneratedAnswers[2].answer == true) {
      _colorb3 = Colors.green;
    }
    if (question[0].GeneratedAnswers[3].answer == true) {
      _colorb4 = Colors.green;
    }
  }
}
