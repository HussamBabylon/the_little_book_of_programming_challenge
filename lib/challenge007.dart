import 'dart:io';

class Alphabet {
  String alphabet = 'abcdefghijklmnopqrstuvxyz';
  String userAlphabet = '';
  aim() {
    String aim = '\nWelcome to challenge 007'
        '\nExtend the program in Challenge 5 to make a'
        '\ngame for seeing how quick people are at tying the alphabet.'
        '\nAlgorithm :'
        '\n1- Tell them to hit enter key when ready'
        '\n2- Get the first time in seconds (and minutes)'
        '\n3- Get them to type in the alphabet and hit enter'
        '\n4- Get the second time in seconds (and minutes) '
        '\n5- Check they have entered the alphabet correctly'
        '\n6- If they entered it correctly then'
        '\n7- Subtract first time from the second time'
        '\n8- Tell them how many seconds they took'
        '\nAlphabet : abcdefghijklmnopqrstuvxyz'
        '\nExtension : Keep a record of the best time achieved'
        '\nDeal with upper or lower case letters entered'
        '\nHints'
        '\nYou’ll need to store their attempt at the alphabet in a variable and compare with “abcdef...” '
        '\nPrior Knowledge Needed'
        '\nAs challenge 5 plus.. '
        '\nHow to write an IF statement.';

    print('\x1B[31m $aim');
  }

  alphabetGame() {
    aim();
    try {
      print('\x1B[35m \nplease enter when you are ready');
      var enterKey = stdin.readLineSync()!;
      if (enterKey == '') {
        var firstTime = DateTime.now().second.toDouble();
        print('\x1B[35m \nenter the aphabet now ..!');
        userAlphabet = stdin.readLineSync()!;
        if (userAlphabet == alphabet) {
          print('\x1B[32m \nyou have entered the alphabet correctly');
          var secondTime = DateTime.now().second.toDouble();
          var userTime = (secondTime - firstTime);
          print('\x1B[35m \nyour time reauirment to fish is $userTime');
        } else {
          print('\x1B[32m you have not entered the alphabet correctly');
        }
      }
    } catch (e) {
      print(
          '\x1B[35m you entered wrong vaule , try agine , please enter key in keyboard');
      exit(0);
    }
  }
}
