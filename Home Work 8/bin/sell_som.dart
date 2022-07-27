import 'dart:io';
import 'valuta.dart';

void sellSom(double usd, double eur, double rub, double kzt) {
  print('Выберите валюту покупки:');
  currencyName();
  String inputCurrency = stdin.readLineSync()!.toUpperCase();
  print('Сколько сом вы хотите продать?');
  double inputSum = double.parse(stdin.readLineSync()!);
  switch (inputCurrency) {
    case 'USD':
      print('На $inputSum сом Вы купили ${inputSum / usd} $inputCurrency');
      break;
    case 'EUR':
      print('На $inputSum сом Вы купили ${inputSum / eur} $inputCurrency');
      break;
    case 'RUB':
      print('На $inputSum сом Вы купили ${inputSum / rub} $inputCurrency');
      break;
    case 'KZT':
      print('На $inputSum сом Вы купили ${inputSum / kzt} $inputCurrency');
      break;
    default:
      print('Ошибка! Указано неверное значение.');
      break;
  }
}
