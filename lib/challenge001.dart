import 'dart:io';

class TellMeJoke {
  aim() {
    String aim = '\nWelcome to challenge 001.'
        '\nChallenge Descraption: Write a program that will display a joke'
        '\nDon’t display the punchline until the reader hits the enter key.'
        '\nExtension : display the punchline in a different colour '
        '\nPrior Knowledge Needed : [How to output information to the screen]';

    print('\x1B[31m $aim');
  }

  tellMeJoke() {
    aim();
    print('\x1B[35m \nWhy the fish lived in the water ?');
    String inputKey = stdin.readLineSync()!;
    if (inputKey == '') {
      print('\x1B[32m \nTo take a shower.. (:\n');
    }
  }
}
