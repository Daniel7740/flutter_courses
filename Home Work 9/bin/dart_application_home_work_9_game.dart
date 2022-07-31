//Home Work 9 Guess the number
import 'dart:io';
import 'dart:math';

void main() {
  Random random = new Random();
  int unknown_number = random.nextInt(100);
  int trys = 0;
  int input_number = 0;
  print('Угадайте число от 1 до 100');
  do {
    trys++;
    print('Введите ваше число: \n');
    input_number = int.parse(stdin.readLineSync()!);
    if (input_number > unknown_number) {
      print('Ваше число больше загаданного');
    } else if (input_number < unknown_number) {
      print('Ваше число меньше загаданного');
    } else {
      print('ПОЗДРАВЛЯЮ!\nВы угадали число: $unknown_number');
      break;
    }
  } while (input_number != unknown_number);
  print('Всего попыток: $trys');
}
