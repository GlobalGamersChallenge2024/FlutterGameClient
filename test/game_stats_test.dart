import 'package:flutter_test/flutter_test.dart';
import 'package:global_gamers_challenge_2024/game_stats.dart';

void main() {
  test('Metrics numbers are initialized to 0 at the start', () {
    expect(GameStats.trash, equals(0));
    expect(GameStats.fish, equals(0));
  });
  test('Metrics numbers increase correctly', () {
    GameStats.addTrash();
    GameStats.addFish();
    expect(GameStats.trash, equals(1));
    expect(GameStats.fish, equals(1));
    GameStats.addTrash(2);
    GameStats.addFish(3);
    expect(GameStats.trash, equals(3));
    expect(GameStats.fish, equals(4));
  });
  test('Ensure GameStats class is a singleton', () {
    final instance1 = GameStats();
    final instance2 = GameStats();
    expect(identical(instance1, instance2), isTrue);
  });
}
