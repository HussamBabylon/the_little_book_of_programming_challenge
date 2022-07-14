import 'dart:io';

class Rectangle {
  aim() {
    String aim = '\nWelcome to challenge 003'
        '\nWrite a program to work out the area of a rectangle.'
        '\nCollect the width and height of the rectangle from keyboard'
        '\nCalculate the are'
        '\ndisplay the result'
        '\nExtension : '
        '\ndisplay the volume of cuboid.'
        '\nSee what happens when you do not type in numbers!'
        '\nTry to explain what has happened and why'
        '\nPrior Knowledge Needed'
        '\nHow to create variables'
        '\nHow to input data into a variable'
        '\nHow to display variables'
        '\nHow to perform basic mathematical calculations';
    print('\x1B[31m $aim');
  }

  gtRectangleArea() {
    aim();
    double width = 0;
    double height = 0;
    try {
      print('\x1B[35m\nPlease enter the width.');
      width = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m\nPlease enter the height.');
      height = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong value , try agine');
      exit(0);
    }
    double result = (width * height);
    print('\x1B[32m\nThe are of rectangle = $result');
  }

  getCuboidVolume() {
    aim();
    double width = 0;
    double height = 0;
    double lenght = 0;
    try {
      print('\x1B[35m\nPlease enter the width.');
      width = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m\nPlease enter the height.');
      height = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong value , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m\nPlease enter the length.');
      lenght = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong value , try agine');
      exit(0);
    }
    double result = (width * height * lenght);
    print('\x1B[32m\nThe cuboid volume  = $result');
  }
}
