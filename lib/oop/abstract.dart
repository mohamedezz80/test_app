abstract class AnimalsAbstract {
  int numberOfLimbs;
  String name;
  eat();

  AnimalsAbstract({required this.name, required this.numberOfLimbs});
}

class LionsAbstract implements AnimalsAbstract {
  LionsAbstract({required this.name, required this.numberOfLimbs});
  roar() {
    print('Lion is roaring');
  }

  @override
  String name;

  @override
  int numberOfLimbs;

  @override
  eat() {}
}

class DogsAbstract implements AnimalsAbstract {
  DogsAbstract({required this.name, required this.numberOfLimbs});

  bark() {
    print('Cat is barking');
  }

  @override
  String name;

  @override
  int numberOfLimbs;

  @override
  eat() {
    // TODO: implement eat
    throw UnimplementedError();
  }
}
