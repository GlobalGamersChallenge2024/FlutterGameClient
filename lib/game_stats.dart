/* For recording the stats in the current game */
class GameStats {
  // make the class a singleton
  GameStats._privateConstructor();
  static final GameStats _instance = GameStats._privateConstructor();
  factory GameStats() {
    return _instance;
  }

  // member variables
  static int _trash = 0;
  static int _fish = 0;
  // methods
  static void addTrash([int n = 1]) {
    _trash += n;
  }
  static void addFish([int n = 1]) {
    _fish += n;
  }
  static int displayNumTrash() {
    return _trash;
  }
  static int displayNumFish() {
    return _fish;
  }
}