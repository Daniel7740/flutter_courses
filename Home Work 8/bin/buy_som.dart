import 'dart:io';
import 'valuta.dart';

void buySom(double usd, double eur, double rub, double kzt) {
  print('Выберите валюту продажи:');
  currencyName();
  String inputCurrency = stdin.readLineSync()!.toUpperCase();
  print('Сколько $inputCurrency вы хотите продать?');
  double inputSum = double.parse(stdin.readLineSync()!);
  switch (inputCurrency) {
    case 'USD':
      print('На $inputSum $inputCurrency Вы купили ${inputSum * usd} сом');
      break;
    case 'EUR':
      print('На $inputSum $inputCurrency Вы купили ${inputSum * eur} сом');
      break;
    case 'RUB':
      print('На $inputSum $inputCurrency Вы купили ${inputSum * rub} сом');
      break;
    case 'KZT':
      print('На $inputSum $inputCurrency Вы купили ${inputSum * kzt} сом');
      break;
    default:
      print('Ошибка! Указано неверное значение.');
      break;
  }
}
