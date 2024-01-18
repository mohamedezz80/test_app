import 'package:flutter/cupertino.dart';

class Animals {
  int numberOfLimbs = 4;
  Color skinColor;
  eat() {
    print('Eating');
  }

  Animals({required this.skinColor});
}

class Lions extends Animals {
  Lions({required super.skinColor});

  roar() {
    print('Lion is roaring');
  }
}

class Dogs extends Animals {
  Dogs({required super.skinColor});

  bark() {
    print('Cat is barking');
  }
}
