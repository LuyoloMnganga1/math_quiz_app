import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:math_quiz_app/helpers/score_helper.dart';
import 'package:math_quiz_app/screens/second_grade/second_grade.dart';

class SecondGradeScoreboard extends StatefulWidget {
  final int? score;
  final int? level;
  final String? method;
  const SecondGradeScoreboard(
      {Key? key, @required this.score, this.level, this.method})
      : super(key: key);
  @override
  _SecondGradeScoreboard createState() => _SecondGradeScoreboard();
}

class _SecondGradeScoreboard extends State<SecondGradeScoreboard> {
  late int? _score = widget.score;
  late int? _level = widget.level;
  late String? _method = widget.method;
  late String text;
  Color scafbg = Color(0xff242b3e);
  Color btnprimary = Color(0xff30445c);
  Color appbar = Color(0xff2e435a);
  Color apptext = Color(0xffF9F9F9);
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appbar,
        foregroundColor: apptext,
        title: Center(child: Text("Conclusion")),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(60, 120),
          ),
        ),
      ),
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
                                fontSize: 90, fontFamily: 'Trailer Park Girl'),
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
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondGrade(
                              score: _score,
                              level: _level,
                              method: _method,
                            )));
              });
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
