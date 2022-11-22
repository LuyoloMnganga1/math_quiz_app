import 'dart:math';

class Choice {
  int? value;
  bool? answer;

  Choice({this.value, this.answer});
}

firstGradeHelper(int a, int b) {
  Choice choice = new Choice();
  choice.value = a + b;
  choice.answer = true;
  return choice;
}
firstGradeHelperX(int a, int b) {
  Choice choice = new Choice();
  choice.value = b - a;
  choice.answer = true;
  return choice;
}

firstGradeARandomHelper(int a, int b) {
  Random random = new Random();
  int randomNumber = random.nextInt(4) + 1;
  var choice = new Choice();
  choice.value = a + b + randomNumber;
  choice.answer = false;
  return choice;
}

firstGradeARandomHelperX(int a, int b) {
  Random random = new Random();
  int randomNumber = random.nextInt(4) + 1;
  var choice = new Choice();
  choice.value = b - a - randomNumber;
  choice.answer = false;
  return choice;
}

firstGradeBRandomHelperX(int a, int b) {
  Random random = new Random();
  int randomNumber = random.nextInt(3) + 1;
  var choice = new Choice();
  choice.value = b - a + randomNumber;
  choice.answer = false;
  return choice;
}

firstGradeCRandomHelperX(int a, int b) {
  Random random = new Random();
  int c = ((b - a) * 3).round();
  int randomNumber = random.nextInt(7) + 1;
  var choice = new Choice();
  int sum =randomNumber - c;
  if (sum ==b - a) sum = sum + 2;
  choice.value = sum;
  choice.answer = false;
  return choice;
}

firstGradeBRandomHelper(int a, int b) {
  Random random = new Random();
  int randomNumber = random.nextInt(3) + 1;
  var choice = new Choice();
  choice.value = a + b - randomNumber;
  choice.answer = false;
  return choice;
}

firstGradeCRandomHelper(int a, int b) {
  Random random = new Random();
  int c = ((a + b) / 3).round();
  int randomNumber = random.nextInt(7) + 1;
  var choice = new Choice();
  int sum = c + randomNumber;
  if (sum == a + b) sum = sum - 2;
  choice.value = sum;
  choice.answer = false;
  return choice;
}
