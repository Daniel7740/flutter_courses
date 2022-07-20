//Calculator
import 'dart:io';
import 'dart:math';

void main() {
  print('Введите первое число: ');
  String first_str = stdin.readLineSync()!;
  double first_num = double.tryParse(first_str) ?? 0;
  if (first_num == 0 && first_str != '0') {
    print('Ошибка! Посчитать текст не возможно.');
    exit(200);
  }

  print(
      'Введите один из операторов: \n +\n -\n *\n /\n для возведения в степень нажмите: ^\n ');
  String operation = stdin.readLineSync()!;

  if (operation != '+' &&
      operation != '-' &&
      operation != '*' &&
      operation != '/' &&
      operation != '^') {
    print('Ошибка! Введён неверный оператор.');
    exit(200);
  }

  if (operation == '^') {
    print('Введите желаемую степень:');
    String exponentiate_str = stdin.readLineSync()!;
    double exponentiate_num = double.tryParse(exponentiate_str) ?? 0;
    if (exponentiate_num == 0 && exponentiate_str != '0') {
      print('Ошибка! Возвести в степень текст не возможно.');
      exit(200);
    } else {
      print('Ответ: ${pow(first_num, exponentiate_num)}');
    }
  } else {
    print('Введите второе число: ');
    String second_str = stdin.readLineSync()!;
    double second_num = double.tryParse(second_str) ?? 0;
    if (second_num == 0 && second_str != '0') {
      print('Ошибка! Посчитать текст не возможно.');
      exit(200);
    }

    if (operation == '/' && second_num == 0) {
      print('Ошибка! На ноль делить нельзя');
      exit(200);
    }

    switch (operation) {
      case '+':
        print('Ответ: ${first_num + second_num}');
        break;
      case '-':
        print('Ответ: ${first_num - second_num}');
        break;
      case '*':
        print('Ответ: ${first_num * second_num}');
        break;
      case '/':
        print('Ответ: ${first_num / second_num}');
        break;
      default:
    }
  }
}
