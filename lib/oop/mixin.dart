class AnimalsMixin {
  String name;

  AnimalsMixin({required this.name});
}

mixin MammalsMixin {
  String walk() {
    return ('Mammals is walking');
  }
}

mixin ReptilesMixin {
  crawl() {}
}

mixin PetMixin {
  play() {}
  String walk() {
    return ('Pets is walking');
  }
}

class LionsMixin extends AnimalsMixin with MammalsMixin {
  LionsMixin({required super.name});
}

class DogsMixin extends AnimalsMixin with MammalsMixin, PetMixin {
  DogsMixin({required super.name});
}

class SnackMixin extends AnimalsMixin with ReptilesMixin {
  SnackMixin({required super.name});
}
