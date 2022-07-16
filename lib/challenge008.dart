import 'dart:io';

class VoitDecider {
  int year = 0;
  int month = 0;
  int day = 0;
  aim() {
    String aim = '\nWelcome to challenge 008.'
        '\nWrite a program that will accept someone’s date of birth and'
        '\nwork out whether they can vote (i.e. Are they 18?).'
        '\nPrior Knowledge Needed '
        '\nHow to create IF statement.'
        '\nUsing the dateDiff function';

    print('\x1B[31m $aim');
  }

  bool isAllowedToVoit() {
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
    var userYear = (yourLiveInDays / 365);
    var intUserYear = userYear.toInt();
    //print('\x1B[32m your Lived $intUserYear days');
    if (intUserYear >= 18) {
      return true;
    } else {
      return false;
    }
  }
}
