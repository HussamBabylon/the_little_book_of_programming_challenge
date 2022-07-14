import 'dart:io';

class CarTreval {
  double distance = 0;
  double speed = 0;
  double time = 0;
  aim() {
    String aim = '\nWelcome to challenge 004'
        '\nWrite a program that will work out the'
        '\ndistance travelled if the user enters in the'
        '\nspeed and the time.'
        '\nExtenstion'
        '\nGet the program to tell you the speed you would have to travel'
        '\nat in order to go a distance within a certain time entered by the user';

    print('\x1B[31m $aim');
  }

  calculatorDistanceCar() {
    aim();
    try {
      print('\x1B[35m \nPlease enter the speed in KMP or KM/H');
      speed = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m \nPlease enter the time in hour ');
      time = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    distance = (time * speed);
    print('\x1B[35m the Distance of travel = $distance KM');
  }

  // Extention
  tellMeSpeed() {
    aim();
    try {
      print('\x1B[35m \nPlease enter the distance in KM');
      distance = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    try {
      print('\x1B[35m \nPlease enter the time in hour ');
      time = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('\x1B[35m you entered wrong vaule , try agine');
      exit(0);
    }
    speed = (distance / time);
    print('\x1B[35m the speed you need  = $speed KM/h');
  }
}
