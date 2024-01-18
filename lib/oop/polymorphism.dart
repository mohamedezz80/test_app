class AnimalsPoly {
  int numberOfLimbs = 4;
  String name;
  eat() {
    print('Eating');
  }

  AnimalsPoly({required this.name});
}

class LionsPoly extends AnimalsPoly {
  LionsPoly({required super.name});

  roar() {
    print('Lion is roaring');
  }
}

class DogsPoly extends AnimalsPoly {
  DogsPoly({required super.name});

  bark() {
    print('Cat is barking');
  }
}
