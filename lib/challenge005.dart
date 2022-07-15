import 'dart:io';

class TimeYourLife {
  int year = 0;
  int month = 0;
  int day = 0;
  aim() {
    String aim = '\nWelcome to challenge 005'
        '\nWrite a program to work out how many days you have lived for'
        '\nAlgorithm :'
        '\n1- Enter date of brith'
        '\n2- Get today date'
        '\n3- Get the difference in days between the tow dates'
        '\n4- Display result'
        '\nExtension : Work out how many seconds you’ve lived for.'
        '\nHints'
        '\nUse Date.Now to get today’s date'
        '\nUse the date type for a variable to store your date of birth'
        '\nUse the datediff function to get the difference between two days'
        '\nPrior Knowledge Needed'
        '\nHow to create variables'
        '\nHow to input data into a variable'
        '\nHow to display variables'
        '\nHow to use system functions'
        '\nHow to use system variables';

    print('\x1B[31m $aim');
  }

  getYourLiveInDays() {
    aim();
    try {
      print('\x1B[35m \nplease enter your year brith');
      year = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m \nplease enter your month brith');
      month = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m \nplease enter your day brith');
      day = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    var yourBrith = DateTime.utc(year, month, day);
    var dateNow = DateTime.now().toUtc();
    var difference = dateNow.difference(yourBrith);
    var yourLiveInDays = difference.inDays;
    print('\x1B[32m your Lived $yourLiveInDays days');
  }

  getYourLiveInSecond() {
    aim();
    try {
      print('\x1B[35m \nplease enter your year brith');
      year = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m \nplease enter your month brith');
      month = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m \nplease enter your day brith');
      day = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    var yourBrith = DateTime.utc(year, month, day);
    var dateNow = DateTime.now().toUtc();
    var difference = dateNow.difference(yourBrith);
    var yourLiveInSecond = difference.inSeconds;
    print('\x1B[32m your Lived $yourLiveInSecond second');
  }
}
