import 'dart:io';

class HelloName {
  aim() {
    String aim = '\nWelcome to challenge 002'
        '\nchallenge desxraption : Write a program that will ask you your name'
        '\nIt will then display ‘Hello Name’ where ‘Name’ is the name you have entered'
        '\nE.g.'
        '\nWhat is your name?'
        '\nAda'
        '\nHello Ada'
        '\nPrior Knowledge Needed :'
        '\nHow to create variables'
        '\nHow to input data into a variable'
        '\nHow to display variables';

    print('\x1B[31m $aim');
  }

  String userName = '';

  String getUserName() {
    print('\x1B[35m \nWhat is your name?');
    userName = stdin.readLineSync()!;
    return userName;
  }

  printHelloYourName() {
    aim();
    getUserName();
    print('\x1B[35m \nHello $userName');
  }
}
