import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:math_quiz_app/helpers/score_helper.dart';
import 'package:math_quiz_app/screens/first_grade/first_grade.dart';

class FirstGradeScoreBoard extends StatefulWidget {
  final int? score;
  final int? level;
  const FirstGradeScoreBoard({Key? key, @required this.score, this.level})
      : super(key: key);
  @override
  _FirstGradeScoreBoardState createState() => _FirstGradeScoreBoardState();
}

class _FirstGradeScoreBoardState extends State<FirstGradeScoreBoard> {
  late int? _score = widget.score;
  late int? _level = widget.level;
  late String text;
  Color scafbg = Color(0xff242b3e);
  Color btnprimary = Color(0xff30445c);
  @override
  void initState() {
    super.initState();
    setState(() {
      if (_score! <= 30 && _score! > 10) {
        text = "Damn ${_score} points. We'd better practice a little more!";
      }
      if (_score! <= 10) {
        text = "You got ${_score} but we can do better by trying again!";
      }
      if (_score! <= 70 && _score! > 30) {
        text = "Great ${_score} point, your math is fine!";
      }
      if (_score! >= 70) {
        text = "Wow ${_score} points, you're a master!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scafbg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                  color: Color(0xffccdde7),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RatingBarIndicator(
                    itemSize: 100,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 3,
                    rating: scoreHelper(_score!),
                  ),
                  Container(
                    color: Color(0xffe78230),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "${_score}",
                            style: TextStyle(
                                fontSize: 90,
                                fontFamily: 'Trailer Park Girl',
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_level == 1) {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FirstGrade(
                                score: _score,
                                level: _level,
                              )));
                });
              }
            },
            child: Text("Return to Test Screen"),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff30445c),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textStyle: TextStyle(fontSize: 30),
                fixedSize: Size(275, 100)),
          )
        ],
      ),
    );
  }
}
