import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:global_gamers_challenge_2024/player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
