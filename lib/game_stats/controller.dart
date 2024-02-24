import 'package:flutter/material.dart';

/* For recording the stats in the current game */
class GameStatsController extends ChangeNotifier {
  // make the class a singleton, can only have one instance of this class
  static final GameStatsController _singleton = GameStatsController._internal();
  factory GameStatsController() {
    return _singleton;
  }

  GameStatsController._internal();

  // member variables
  static int _trash = 0;
  static int _fish = 0;
  // getters
  get trash => _trash;
  get fish => _fish;

  // methods
  void addTrash([int n = 1]) {
    _trash += n;
    notifyListeners();
  }
  void removeTrash([int n = 1]) {
    if (_trash - n >= 0) {
      _trash -= n;
      notifyListeners();
    }
  }
  void addFish([int n = 1]) {
    _fish += n;
    notifyListeners();
  }
}