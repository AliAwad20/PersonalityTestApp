import 'package:personality_test/models/Answers.dart';
import 'package:personality_test/models/Questions.dart';
import 'package:personality_test/models/Personality_type.dart';

final QuestionsList = [
  Questions(
    text: "How do you approach a difficult decision?",
    answers: [
      Answers(
        text: 'Analyze all options logically',
        personalityType: PersonalityType.thinker,
      ),
      Answers(
        text: 'Go with what feels right emotionally',
        personalityType: PersonalityType.feeler,
      ),
      Answers(
        text: 'Make a checklist and plan it out',
        personalityType: PersonalityType.planner,
      ),
      Answers(
        text: 'Take a leap and deal with results later',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Questions(
    text: "What excites you the most?",
    answers: [
      Answers(
        text: 'Solving complex problems',
        personalityType: PersonalityType.thinker,
      ),
      Answers(
        text: 'Connecting deeply with others',
        personalityType: PersonalityType.feeler,
      ),
      Answers(
        text: 'Creating a clear path to your goals',
        personalityType: PersonalityType.planner,
      ),
      Answers(
        text: 'Exploring something new',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Questions(
    text: "Which best describes your work style?",
    answers: [
      Answers(
        text: 'Detail-focused and logical',
        personalityType: PersonalityType.thinker,
      ),
      Answers(
        text: 'People-centered and intuitive',
        personalityType: PersonalityType.feeler,
      ),
      Answers(
        text: 'Organized and systematic',
        personalityType: PersonalityType.planner,
      ),
      Answers(
        text: 'Flexible and spontaneous',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Questions(
    text: "How do you recharge after a long day?",
    answers: [
      Answers(
        text: 'Quiet reflection or reading',
        personalityType: PersonalityType.thinker,
      ),
      Answers(
        text: 'Spending time with close friends',
        personalityType: PersonalityType.feeler,
      ),
      Answers(
        text: 'Planning tomorrow\'s tasks',
        personalityType: PersonalityType.planner,
      ),
      Answers(
        text: 'Doing something active or exciting',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Questions(
    text: "You're most comfortable when...",
    answers: [
      Answers(
        text: 'Things make logical sense',
        personalityType: PersonalityType.thinker,
      ),
      Answers(
        text: 'Everyone is getting along',
        personalityType: PersonalityType.feeler,
      ),
      Answers(
        text: 'There\'s a clear structure',
        personalityType: PersonalityType.planner,
      ),
      Answers(
        text: 'You\'re free to try new things',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
  Questions(
    text: "Your biggest strength is...",
    answers: [
      Answers(
        text: 'Thinking critically',
        personalityType: PersonalityType.thinker,
      ),
      Answers(
        text: 'Empathizing with others',
        personalityType: PersonalityType.feeler,
      ),
      Answers(
        text: 'Staying organized',
        personalityType: PersonalityType.planner,
      ),
      Answers(
        text: 'Being adventurous',
        personalityType: PersonalityType.adventurer,
      ),
    ],
  ),
];
