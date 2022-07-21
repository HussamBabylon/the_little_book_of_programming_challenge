import 'dart:io';
import 'dart:math';

class RockPaperScissors {
  aim() {
    String aim = '/n Welcome to challenge 010'
        '\n make a game of rock , paper , scissors against the computer'
        '\n Algorithm :'
        '\n 1- tell user to enter either rock , paper , scissors'
        '\n 2- get the response'
        '\n 3- Generate a random number from 1 to 3 (1 = rock , 2 = paper , 3 = scissors)'
        '\n 4- compare user selection and computer selection'
        '\n display who wins'
        '\n Hint : Do not forget to randomize'
        '\n Extension:'
        '\n make sure the user enters a vaild entry'
        '\n add a loop structure to play several times and keep a running score'
        '\n make an enumerated variable type to store choices'
        '\n Prior Knowledge needed'
        '\n how to create IF statements with logical operators (or nested lfs)'
        '\n how to generate random numbers';
    print('\x1B[35m $aim');
  }

  String getUserSelection() {
    try {
      print(
          '\x1B[35m \nPlease enter 1 = rock , 2 =  paper , 3 =  scissors , 4 = exit.!');
      int userSelection = int.parse(stdin.readLineSync()!);
      String selectionNames = '';
      switch ((userSelection - 1)) {
        case 0:
          selectionNames = 'rock';
          break;
        case 1:
          selectionNames = 'paper';
          break;
        case 2:
          selectionNames = 'scissors';
          break;
        case 3:
          selectionNames = 'exit';
          break;
        default:
      }
      //
      //print(selectionNames);
      return selectionNames;
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
  }

  String getComputerSelection() {
    List<String> rps = ['rock', 'paper', 'scissors'];
    int rpsRandom = Random().nextInt(rps.length);
    String rpsNames = rps[rpsRandom];
    //print(rpsNames);
    return rpsNames;
  }

  compareSelection() {
    String selectionNames = getUserSelection();
    String rpsNames = getComputerSelection();
    do {
      if (selectionNames == 'rock' && rpsNames == 'rock') {
        print('\x1B[31m Draw');
        return compareSelection();
      } else if (selectionNames == 'rock' && rpsNames == 'paper') {
        print('\x1B[31m you lost');
        return compareSelection();
      } else if (selectionNames == 'rock' && rpsNames == 'scissors') {
        print('\x1B[31m you win');
        return compareSelection();
      }
      if (selectionNames == 'paper' && rpsNames == 'paper') {
        print('\x1B[31m Draw');
        return compareSelection();
      } else if (selectionNames == 'paper' && rpsNames == 'scissors') {
        print('\x1B[31m you lost');
        return compareSelection();
      } else if (selectionNames == 'paper' && rpsNames == 'rock') {
        print('\x1B[31m you win');
        return compareSelection();
      }
      if (selectionNames == 'scissors' && rpsNames == 'scissors') {
        print('\x1B[31m Draw');
        return compareSelection();
      } else if (selectionNames == 'scissors' && rpsNames == 'rock') {
        print('\x1B[31m you lost');
        return compareSelection();
      } else if (selectionNames == 'scissors' && rpsNames == 'paper') {
        print('\x1B[31m you win');
        return compareSelection();
      }
    } while (selectionNames != 'exit');
    print('\x1B[32m bye (:');
  }
}
