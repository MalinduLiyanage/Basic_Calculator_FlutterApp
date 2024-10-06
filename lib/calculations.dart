var displayString = '';
//Like 1234567890./*-+
var operands = '';
//Like /*-+
var operators = '';
double result = 0;

List<double> numbers = [];
List<String> mathOperators = [];

void startCalculation() {
  List<String> parts = operands.split(" ");
  List<String> operatorParts = operators.split("");
  if (parts[0].isNotEmpty) {
    numbers = parts.map(double.parse).toList();
    print(numbers);
    if (operatorParts[0].isNotEmpty) {
      mathOperators = operatorParts;
      print(mathOperators);
      calculation();
    }
  } else {
    print("Empty List");
  }
}

void calculation() {
  int i;
  for (i = 0; i < mathOperators.length; i++) {
    if (mathOperators[i] == '/') {
      result = numbers[i] / numbers[i + 1];
      numbers[i + 1] = result;
      numbers.removeAt(i);
      mathOperators.removeAt(i);
    }
  }

  for (i = 0; i < mathOperators.length; i++) {
    if (mathOperators[i] == '*') {
      result = numbers[i] * numbers[i + 1];
      numbers[i + 1] = result;
      numbers.removeAt(i);
      mathOperators.removeAt(i);
    }
  }

  for (i = 0; i < mathOperators.length; i++) {
    if (mathOperators[i] == '+') {
      result = numbers[i] + numbers[i + 1];
      numbers[i + 1] = result;
      numbers.removeAt(i);
      mathOperators.removeAt(i);
    }
  }

  for (i = 0; i < mathOperators.length; i++) {
    if (mathOperators[i] == '-') {
      result = numbers[i] - numbers[i + 1];
      numbers[i + 1] = result;
      numbers.removeAt(i);
      mathOperators.removeAt(i);
    }
  }

  print(numbers);
  print(mathOperators);
}

void clearCalculator() {
  operands = '';
  operators = '';
  displayString = '';
  result = 0;
  numbers.clear();
  mathOperators.clear();
}
/*
void calculation() {
  int i;
  for (i = 0; i < mathOperators.length; i++) {
    if (mathOperators[i] == '/') {
      result = numbers[i] / numbers[i + 1];
      numbers[i + 1] = result;
    }
    if (mathOperators[i] == '*') {
      result = numbers[i] * numbers[i + 1];
      numbers[i + 1] = result;
    }
    if (mathOperators[i] == '+') {
      result = numbers[i] + numbers[i + 1];
      numbers[i + 1] = result;
    } else if (mathOperators[i] == '-') {
      result = numbers[i] - numbers[i + 1];
      numbers[i + 1] = result;
    }
  }
  print(numbers);
}*/