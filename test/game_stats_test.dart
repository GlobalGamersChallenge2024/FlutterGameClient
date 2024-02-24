import 'package:flutter_test/flutter_test.dart';
import 'package:global_gamers_challenge_2024/game_stats/controller.dart';

GameStatsController gs = GameStatsController();

void main() {
  test('Game stats numbers are initialized to 0 at the start', () {
    expect(gs.trash, equals(0));
    expect(gs.fish, equals(0));
  });
  test('Game stats numbers increase correctly', () {
    gs.addTrash();
    gs.addFish();
    expect(gs.trash, equals(1));
    expect(gs.fish, equals(1));
    gs.addTrash(2);
    gs.addFish(3);
    expect(gs.trash, equals(3));
    expect(gs.fish, equals(4));
  });
  test('Trash number decrease correctly', () {
    gs.removeTrash();
    expect(gs.trash, equals(2));
    gs.removeTrash(2);
    expect(gs.trash, equals(0));
  });
  test('Ensure GameStats class is a singleton', () {
    final instance1 = GameStatsController();
    final instance2 = GameStatsController();
    expect(identical(instance1, instance2), isTrue);
  });
}
