import 'question.dart';

class QuizBrain {
  // private property
  int _counter = 0;
  // question bank is a private variable. We shouldn't be able to
  // meddle with this data nor see it.
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  void nextQuestion() {
    if (_counter < _questionBank.length - 1) {
      _counter++;
    }
  }

  String getQuestionText() {
    return _questionBank[_counter].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_counter].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished() {
    if (_counter >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

//TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _counter = 0;
  }
}
