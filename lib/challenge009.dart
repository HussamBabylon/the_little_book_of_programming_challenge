import 'dart:io';
import 'dart:math';

class CardGameRandom {
  aim() {
    String aim = '\nWelcome to challege 009'
        '\nWrite a program that will generate a random playing card e.g. ‘9 Hearts’,'
        '\n‘Queen Spades’ when the return key is pressed. Rather than generate a random number'
        '\nfrom 1 to 52. Create two random numbers – one for the suit and one for the card.'
        '\nExtension : Make a loop structure so playing cards can keep being generated '
        '\nPrior Knowledge Needed :'
        '\n1- How to create IF or CASE statements with logical operators .'
        '\n2- How to generate random numbers';
    print('\x1B[35m \n$aim');
  }

  String cardNumberRandom() {
    List<int> cardNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    int cardNumberRandom = Random().nextInt(cardNumber.length);
    String cardNumberNames = '';
    switch (cardNumberRandom) {
      case 0:
        //print('Ace');
        cardNumberNames = 'Ace';
        break;
      case 10:
        //print('Jack');
        cardNumberNames = 'Jack';
        break;
      case 11:
        //print('Queen');
        cardNumberNames = 'Queen';

        break;
      case 12:
        // print('King');
        cardNumberNames = 'King';
        break;
      default:
        cardNumberNames = cardNumber[cardNumberRandom].toString();
    }
    return cardNumberNames;
    // print(cardNumberNames);
    // return cardNumberNames;
  }

  String cardSuitRandom() {
    List<String> cardSuit = ['Spade', 'Heart', 'Diamond', 'club'];
    int intCardSuitRandom = Random().nextInt(cardSuit.length);
    String cardSuitNames = cardSuit[intCardSuitRandom];
    return cardSuitNames;
    //print(cardSuitNames);
    // return cardSuitNames;
    // print('\x1B[32m \nPlease enter key to replay !');
    // String enterKey = stdin.readLineSync()!;
  }

  playCardGame() {
    aim();
    String enterKey;
    do {
      String cardSuitNames = cardSuitRandom();
      String cardNumberNames = cardNumberRandom();
      print('\x1B[32m \nPlease enter key to replay !');
      //String enterKey = stdin.readLineSync()!;
      enterKey = stdin.readLineSync()!;
      if (enterKey == '') {
        Map playCardGame = {'Numbers': cardNumberNames, 'Suit': cardSuitNames};
        String numbers = playCardGame['Numbers'];
        String suit = playCardGame['Suit'];
        print('\x1b[31m$numbers $suit');
        //enterKey = 'enter';
      }
    } while (enterKey != 'exit');
  }
}
