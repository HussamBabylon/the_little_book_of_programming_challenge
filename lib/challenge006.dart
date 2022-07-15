import 'dart:io';

class GuessingGame {
  aim() {
    String aim = '\nWelcome to challenge 006'
        '\nMake a game for seeing how good people are at'
        '\nuessing when 10 seconds have elapsed.'
        '\nAlgorithm :'
        '\n1- Tell them to hit enter key when ready'
        '\n2- Get the first time in seconds'
        '\n3- Get them to hit the enter key when they think time has elapsed'
        '\n4- Get the second time in seconds'
        '\n5- Subtract first time from the second time'
        '\n6- Tell them how close to 10 the answer was.'
        '\nExtension : Sometimes this solution doesntwork. Can you work out why it doesn’t work? Can you fix it?'
        '\nHints'
        '\nUse Now.Second - To get the current time in seconds of the minute'
        '\nPrior Knowledge Needed'
        '\nHow to create variables'
        '\nHow to input data into a variable'
        '\nHow to display variables'
        '\nHow to use system functions'
        '\nHow to use system variables';

    print('\x1B[31m $aim');
  }

  playGame() {
    aim();
    try {
      print('\x1B[35m \nplease enter when you are ready');
      String enterKey = stdin.readLineSync()!;
      if (enterKey == '') {
        var firstTime = DateTime.now().second.toDouble();
        print('\x1B[35m \nplease enter when you are think time is elpased');
        String enterKey = stdin.readLineSync()!;
        if (enterKey == '') {
          var secondTime = DateTime.now().second.toDouble();
          var userTime = (secondTime - firstTime);
          print('\x1B[32m \nyour time guessing is $userTime');
          var errorUserTime = (10 - userTime);
          print('\x1B[32m \nyour time error  is $errorUserTime');
        }
      }
    } catch (e) {
      print(
          '\x1B[35m you entered wrong vaule , try agine , please enter key in keyboard');
      exit(0);
    }
  }
}
