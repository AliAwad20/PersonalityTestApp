import 'package:personality_test/models/Answers.dart';

class Questions {
  final String text;
  final List<Answers> answers;

  Questions({required this.text, required this.answers});

  List<Answers> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
