//Home Work 9
import 'dart:io';

void main() {
// Задание номер 1
// 1) Возьмем, например, два списка:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// и напишите программу, которая возвращает список, содержащий только общие для них элементы (без дубликатов). Убедитесь, что ваша программа работает с двумя списками разного размера.
// Ответ: [1, 2, 3, 5, 8, 13]

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> c = [];
  for (var i = 0; i < a.length; i++) {
    for (var j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        if (!c.contains(b[j])) {
          c += [a[i]];
        }
      }
    }
  }
  print(c);

// Задание номер 2
// 2) Допустим, вам дан список, сохраненный в переменной:
// а = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Напишите код Dart, который берет этот список и создает новый список, в котором есть только четные элементы этого списка.
// Ответ = [4, 16, 36, 64, 100];

  List<int> a2 = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> b2 = [];
  for (int i = 0; i < a2.length; i++) {
    if (a2[i].isEven) {
      b2 += [a2[i]];
    }
  }
  print(b2);

// Задание номер 3
// 3) Создайте функцию, которая принимает две строки в качестве аргументов и возвращает, сколько раз первая строка (один символ) была найдена во второй строке.
// Пример:
// вожу "a" и "dart" ➞ результат = 1
// вожу "c" и "Chamber of secrets" ➞ результат = 1
// вожу "b" и "big fat bubble" ➞ результат = 4

  print(
      'Строка 1:\n Введите один символ который хотите обнаружить в строке 2:');
  String a3 = stdin.readLineSync()!;
  print('Строка 2\n Введите строку 2:');
  String b3 = stdin.readLineSync()!;
  getNumber(a3, b3);
}

void getNumber(String a3, String b3) {
  int count = 0;
  List c = b3.split('');
  for (int i = 0; i < c.length; i++) {
    if (c[i] == a3) {
      count++;
    }
  }
  print('Во второй строке содержится $count элемента первой строки');
}