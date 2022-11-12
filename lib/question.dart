class Question {
  // Notice the LATE keyword which is telling the program that questionText and questionAnswer
  // don't need a default  value because whenever someone makes a Question they will be making
  // the text and answer themselves
  //properties of the class
  late String questionText;
  late bool questionAnswer;

  // Constructor
  Question(this.questionText, this.questionAnswer);
}

Question newQuestion = Question('text', true);
