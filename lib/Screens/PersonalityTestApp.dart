import 'package:flutter/material.dart';
import 'package:personality_test/Screens/QuestionScreen.dart';
import 'package:personality_test/Screens/ResultScreen.dart';
import 'package:personality_test/Screens/StartScreen.dart';
import 'package:personality_test/data/questions_data.dart';
import 'package:personality_test/models/Answers.dart';
import 'package:personality_test/models/Personality_type.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  var questionIndex = -1;
  final Map<PersonalityType, int> scores = {
    PersonalityType.thinker: 0,
    PersonalityType.feeler: 0,
    PersonalityType.planner: 0,
    PersonalityType.adventurer: 0,
  };

  void switchScreen() {
    setState(() {
      questionIndex = 0;
    });
  }

  void chooseAnswer(Answers answer) {
    setState(() {
      scores[answer.personalityType] = scores[answer.personalityType]! + 1;
      questionIndex++;
    });
  }

  void restartQuiz() {
    setState(() {
      questionIndex = -1;
      scores.updateAll((key, value) => 0);
    });
  }

  Widget getScreenForIndex() {
    if (questionIndex == -1) {
      return Startscreen(switchScreen);
    } else if (questionIndex >= 0 && questionIndex < QuestionsList.length) {
      return Questionscreen(chooseAnswer, questionIndex);
    } else {
      return ResultScreen(
        personalityType: calculateresult(),
        onRestart: restartQuiz,
      );
    }
  }

  PersonalityType calculateresult() {
    PersonalityType result = PersonalityType.thinker;
    int highestScore = 0;

    scores.forEach((type, score) {
      if (score > highestScore) {
        highestScore = score;
        result = type;
      }
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.purpleAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: getScreenForIndex(),
        ),
      ),
    );
  }
}
