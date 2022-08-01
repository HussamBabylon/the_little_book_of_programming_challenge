import 'dart:io';

class LogicGate {
  int firstInput = 0;
  int secondeInput = 0;
  int result = 0;
  String select = '';
  aim() {
    String aim = '/n Welcome to challenge 011'
        '\n Write a program that will give the students the answer to logic gate'
        '\n questions e.g.'
        '\n 1- enter logic gate : OR'
        '\n 2- enter first input : 1'
        '\n 3- enter second input : 0'
        '\n 4- result = 1'
        '\n It should work for the logic gates OR, AND and XOR'
        '\n Extension:'
        '\n Include NAND and NOR gates'
        '\n Prior Knowledge Needed'
        '\n How to create IF statements using logical operators';
    print('\x1B[35m $aim');
  }

  oRLogicGate() {
    try {
      print('\x1B[32m enter the first input ');
      firstInput = int.parse(stdin.readLineSync()!);
      print('\x1B[32m enter the second input ');
      secondeInput = int.parse(stdin.readLineSync()!);
      if (firstInput == 0 || secondeInput == 0) {
        result = 0;
        print('result = $result');
      }
      else {
        result = 1;
        print('result = $result');
      }
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
  }

  andLogicGate() {
    try {
      print('\x1B[32m enter the first input ');
      firstInput = int.parse(stdin.readLineSync()!);
      print('\x1B[32m enter the second input ');
      secondeInput = int.parse(stdin.readLineSync()!);
      if (firstInput == 1 || secondeInput == 1) {
        result = 1;
        print('result = $result');
      }
      else {
        result = 0;
        print('result = $result');
      }
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
  }

  xORLogicGate() {
    try {
      print('\x1B[32m enter the first input ');
      firstInput = int.parse(stdin.readLineSync()!);
      print('\x1B[32m enter the second input ');
      secondeInput = int.parse(stdin.readLineSync()!);
      if (firstInput == 0 || secondeInput == 0) {
        result = 1;
        print('result = $result');
      }
      else {
        result = 0;
        print('result = $result');
      }
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
  }

  selectGateAndRun() {
    try {
      print('\x1B[32m select the logic gate  "OR" , "AND" , "XOR" ');
      select = stdin.readLineSync()!;
      switch (select) {
        case 'OR':
          oRLogicGate();
          break;
        case 'AND':
          andLogicGate();
          break;
        case 'XOR':
          xORLogicGate();
          break;
        default:
      }
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
  }
}
