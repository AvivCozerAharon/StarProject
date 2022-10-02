class GameSettings{
  static const options = [1,2,3,4,5,6];
}

class GameOption{
  int option;
  bool matched;
  bool selected;
  GameOption({required this.option,required this.matched,required this.selected});
}