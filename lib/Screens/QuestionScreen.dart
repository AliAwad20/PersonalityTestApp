import 'package:flutter/material.dart';
import 'package:personality_test/models/Answers.dart';
import 'package:personality_test/data/questions_data.dart';

class Questionscreen extends StatelessWidget {
  const Questionscreen(this.onSelectAnswer, this.questionIndex, {super.key});
  final void Function(Answers answer) onSelectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
               Colors.blue, Colors.purpleAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Question Counter
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Question ${questionIndex + 1} of ${QuestionsList.length}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Question Text
            Text(
              QuestionsList[questionIndex].text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Answer Buttons
            ...QuestionsList[questionIndex].answers.map((answer) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () => onSelectAnswer(answer),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    backgroundColor: Colors.white10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    answer.text,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }).toList(),
            // Progress Indicator
            const SizedBox(height: 20),
            LinearProgressIndicator(
              value: (questionIndex + 1) / QuestionsList.length,
              backgroundColor: Colors.white12,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white12),
            ),
          ],
        ),
      ),
    );
  }
}
