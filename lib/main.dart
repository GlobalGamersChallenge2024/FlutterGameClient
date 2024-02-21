import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:global_gamers_challenge_2024/player.dart';
import 'game_stats.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Debug
  print("Debug\nFish: ${GameStats.displayNumFish()}, Trash: ${GameStats.displayNumTrash()}");
  GameStats.addFish(2);
  print("Fish: ${GameStats.displayNumFish()}, Trash: ${GameStats.displayNumTrash()}");
  GameStats.addTrash(1);
  print("Fish: ${GameStats.displayNumFish()}, Trash: ${GameStats.displayNumTrash()}");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: WorldMapByTiled(
          TiledReader.asset('tiled/map.json')
      ),
        player: MainPlayer(Vector2(40,40))
    );
  }
}
