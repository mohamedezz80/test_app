import 'package:flutter/material.dart';
import 'package:test_app/oop/abstract.dart';
import 'package:test_app/oop/inheritance.dart';
import 'package:test_app/oop/mixin.dart';
import '../oop/encapsulation.dart';
import '../oop/polymorphism.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  Encapsulation
    final Human human = Human();
    human.numberOfArms = 2;
    int numberOfArms = human.numberOfArms;
    //  Inheritance
    Lions scar = Lions(skinColor: const Color(0xffFF5722));
    int numberOfLimbs = scar.numberOfLimbs;
    //  polymorphism
    LionsPoly scarPoly = LionsPoly(name: 'scar');
    DogsPoly dogPoly = DogsPoly(name: 'Jack');
    //List<AnimalsPoly> zooAnimals = [scarPoly,dogPoly];
    List<String> animalsName = [
      scarPoly.name,
      dogPoly.name,
    ];
    List<String> animalsLimbs = [
      scarPoly.numberOfLimbs.toString(),
      dogPoly.numberOfLimbs.toString(),
    ];
    //  Apstract
    LionsAbstract scarAps = LionsAbstract(name: 'Scar', numberOfLimbs: 4);
    //  Mixin
    DogsMixin dogMixin = DogsMixin(name: 'Jack');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Encapsulation : ${numberOfArms.toString()}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Inheritance : $numberOfLimbs',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            // \
            Text(
              'polymorphism : ${animalsName[0]} : ${animalsLimbs[0]} / ${animalsName[1]} : ${animalsLimbs[1]}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Apstract : ${scarAps.name}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Mixin : ${dogMixin.walk().toString()}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
