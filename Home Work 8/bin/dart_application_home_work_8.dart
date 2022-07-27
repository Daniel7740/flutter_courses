import 'dart:io';
import 'valuta.dart';
import 'buy_som.dart';
import 'sell_som.dart';

void main() {
  double usd = 83.00;
  double eur = 85.80;
  double rub = 1.330;
  double kzt = 0.1180;
  exchangeRate(usd, eur, rub, kzt);
  print('1 - Хотите продать сом?');
  print('2 - Хотите купить сом?');
  print('Ввод: ');
  int inputNumber = int.parse(stdin.readLineSync()!);

  if (inputNumber == 1) {
    sellSom(usd, eur, rub, kzt);
  } else if (inputNumber == 2) {
    buySom(usd, eur, rub, kzt);
  } else {
    print('Ошибка! Указано неверное значение.');
  }
}
