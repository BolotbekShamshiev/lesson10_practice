import 'dart:io';

void main() {
  // task1_1(['scorpion', 'subzero', 'reptilie', 'rain', 'ermak']); // Task 1_1.
  // print(task1_2(['scorpion', 'subzero', 'reptilie', 'rain', 'ermak'])); // Task 1_2.
  // task2_1(234); // Task 2_1.
  // print(task2_2(234)); // Task 2_2.
  // task3(999); // Task 3.
  // task4_1(8); // Task 4_1.
  // print(task4_2(8)); // Task 4_2.
  // task5('Loading...', 8); // Task 5.
  // task6(9, 15, 6); // Task 6.
  // task7(); // Task 7.
  // task9(1, 100); // Task 9.
  // task10(5); // Task 10.
  // task11(101); // Task 11.
  // task12(924456); // Task 12.
  // task13(); // Task 13.
}

/* Task #1.
Создайте и заполните массив. Выведите первый и последний элемент списка. */

void task1_1(List<String> fighters) {
  print('Первый элемент массива - ${fighters.first}');
  print('Последний элемент массива - ${fighters.last}');
}

List<String> task1_2(List<String> fighters) {
  List<String> firstAndLast = [fighters.first, fighters.last];
  return firstAndLast;
}

/* Task #2.
Дано трехзначное число. Найдите произведение их цифр. */

void task2_1(int numbers) {
  String chisla = numbers.toString();

  int a1 = int.parse(chisla[0]);
  int a2 = int.parse(chisla[1]);
  int a3 = int.parse(chisla[2]);

  print('Произведение чисел $numbers равно ${a1 * a2 * a3}');
}

int task2_2(int numbers) {
  int a1 = numbers ~/ 100;
  int a2 = (numbers % 100) ~/ 10;
  int a3 = (numbers % 100) % 10;

  return a1 * a2 * a3;
}

/* Task #3.
Дано трехзначное число. Замените среднюю цифру на ноль. */

void task3(int numbers) {
  String chisla = numbers.toString();

  int a1 = int.parse(chisla[0]);
  int a3 = int.parse(chisla[2]);

  print(a1 * 100 + a3);
}

/* Task #4.
Дан номер дня недели. Выведите название дня недели. 
Решение через if и switch case. */

void task4_1(int weeksNumber) {
  if (weeksNumber == 1) {
    print('Monday');
  } else if (weeksNumber == 2) {
    print('Tuesday');
  } else if (weeksNumber == 3) {
    print('Wednesday');
  } else if (weeksNumber == 4) {
    print('Thursday');
  } else if (weeksNumber == 5) {
    print('Friday');
  } else if (weeksNumber == 6) {
    print('Saturday');
  } else if (weeksNumber == 7) {
    print('Sunday');
  } else {
    print('invalid range');
  }
}

String task4_2(int weeksNumber) {
  String result = '';

  switch (weeksNumber) {
    case 1:
      result = 'Monday';
      break;

    case 2:
      result = 'Tuesday';
      break;

    case 3:
      result = 'Wednesday';
      break;

    case 4:
      result = 'Thursday';
      break;

    case 5:
      result = 'Friday';
      break;

    case 6:
      result = 'Saturday';
      break;

    case 7:
      result = 'Sunday';
      break;

    default:
      result = 'invalid range';
  }
  return result;
}

/* Task #5.
Вывести на экран 8 раз фразу "Loading...". Используйте цикл for. */

void task5(String slovo, int kolichestvo) {
  for (int i = 1; i <= kolichestvo; i++) {
    print(slovo);
  }
}

/* Task #6.
Даны три числа. Если сумма двух из них равна третьему, 
то выведите такое равенство, если нет, то выведите произведение 
всех чисел. */

void task6(int a, int b, int c) {
  if (a + b == c || b + c == a || a + c == b) {
    print('сумма двух чисел, равна третьему');
  } else {
    print(a * b * c);
  }
}

/* Task #7.
Анкета. С помощью stdin stdout реализуйте программу, 
которая запрашивает у пользователя имя, возраст, адрес, хобби.
В конечном итоге вывести на экран информацию о пользователе:
Вас зовут: XXX
Ваш возраст: XXX
Ваш адрес: XXX
Ваше хобби: XXX
 */

void task7() {
  stdout.write('What is your name? ');
  String name = stdin.readLineSync()!;

  stdout.write('How old are you? ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Where do you live? ');
  String address = stdin.readLineSync()!;

  stdout.write('What is your hobby? ');
  String hobby = stdin.readLineSync()!;

  print('-' * 50);
  print('Your name is: $name');
  print('Your age is: $age');
  print('Your address is: $address');
  print('Your hobby is: $hobby');
  print('-' * 50);

  String myName = 'Bolot';
  int myAge = 37;
  String myAddress = '6th microdistrict';
  String myHobby = 'play chess';

  if (name == myName &&
      age == myAge &&
      address == myAddress &&
      hobby == myHobby) {
    print('Давай дружить!');
  } else if (name == myName) {
    print('Мы тёзки!');
  } else if (age == myAge) {
    print('Мы ровесники!');
  } else if (address == myAddress) {
    print('Мы соседи!');
  } else if (hobby == myHobby) {
    print('У нас одинаковые хобби!');
  } else {
    print('Ошибка!');
  }
}

/* Task #8.
Поставить проверку к предыдущему заданию. 
Создайте переменные  myName myAge и.т.д

Если ваши имена совпали - вывести на экран «У нас одинаковое имя»
Если ваш возраст совпал - вывести на экран «Мы ровесники»
Если ваш адрес совпал - вывести на экран «Мы соседи»
Если ваше хобби совпало - вывести на экран «У нас одинаковое хобби»
Если совпали все поля - вывести на экран «Давай дружить»
 */

/* Task #9.
В диапазоне чисел от 1 до 100 найти среднее арифметическое чисел.
 */

void task9(int startNumber, int endNumber) {
  int summaChisel = 0;
  for (int i = startNumber; i <= endNumber; i++) {
    summaChisel += i;
  }

  double sredArifmetich = summaChisel / endNumber;
  print(
      'Средне арифметическое чисел от $startNumber до $endNumber составляет $sredArifmetich');
}

/* Task #10.
При заданном целом числе n посчитайте n + nn + nnn.
 */

void task10(int n) {
  print('$n+$n*$n+$n*$n*$n = ${n + n * n + n * n * n}');
}

/* Task #11.
Дан возраст. Если возраст до 7, вывести "Вам в садик". 
Если возраст с 7 до 18, вывести "Вам в школу". 
Если возраст с 19 до 23, вывести "Вам в универ".
Если возраст с 23 до 60, вывести "Вам на работу". 
Если возраст с 60 до 100, вывести "Вы пенсионер". 
В противном случае вывести "Неправильный возраст".
*/

void task11(int age) {
  if (age < 7) {
    print('Вам в садик');
  } else if (age >= 7 && age <= 18) {
    print('Вам в школу');
  } else if (age >= 19 && age <= 23) {
    print('Вам в универ');
  } else if (age > 23 && age < 65) {
    print('Вам на работу');
  } else if (age >= 65 && age <= 100) {
    print('Вам на пенсию');
  } else if (age > 100) {
    print('Вам на небеса');
  } else {
    print('Неправильный возраст');
  }
}

/* Task #12.
Дано шестизначное число, если сумма первых чисел равна сумме 
вторых трех чисел, вывести true, а иначе вывести false.
*/

void task12(int number) {
  String tekstovoi = number.toString();

  int a1 = int.parse(tekstovoi[0]);
  int a2 = int.parse(tekstovoi[1]);
  int a3 = int.parse(tekstovoi[2]);
  int a4 = int.parse(tekstovoi[3]);
  int a5 = int.parse(tekstovoi[4]);
  int a6 = int.parse(tekstovoi[5]);

  if (a1 + a2 + a3 == a4 + a5 + a6) {
    print('true');
  } else {
    print('false');
  }
}

/* Task #13.
Организовать беспрерывный ввод чисел с клавиатуры, 
пока пользователь не введёт 0. После ввода нуля, 
показать на экран количество чисел, которые были введены, 
их общую сумму и среднее арифметическое. 
Подсказка: необходимо объявить переменную-счетчик, 
которая будет считать количество введенных чисел, и переменную, 
которая будет накапливать общую сумму чисел.
Обработать возможные ошибки.
*/

void task13() {
  List<int> numbers = [];

  while (true) {
    stdout.write('Введите число (для завершения введите 0): ');
    String input = stdin.readLineSync() ?? '';

    try {
      int number = int.parse(input);
      
      if (number == 0) {
        break; // Выход из цикла, если пользователь ввел 0
      }

      numbers.add(number); // Добавляем число в список
    } catch (e) {
      print('Некорректный ввод. Пожалуйста, введите число.');
    }
  }

  if (numbers.isNotEmpty) {
    int sum = numbers.reduce((value, element) => value + element);
    double average = sum / numbers.length;

    print('Количество введенных чисел: ${numbers.length}');
    print('Общая сумма чисел: $sum');
    print('Среднее арифметическое: $average');
  } else {
    print('Вы не ввели ни одного числа.');
  }
}
