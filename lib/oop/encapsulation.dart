class Human {
  int _numberOfArms = 2;
  double? height;
  double? weight;

  Human({this.height, this.weight});

  set numberOfArms(int numberOfArms) {
    if (numberOfArms <= 2 && numberOfArms >= 0) {
      _numberOfArms = numberOfArms;
    } else {
      print('Entr number between (0 : 2)');
    }
  }

  int get numberOfArms => _numberOfArms;
}
