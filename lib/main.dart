import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'trash.dart';
import 'player.dart';
import 'game_stats/widget.dart';

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
          TiledReader.asset('tiled/map.json'),
          objectsBuilder: {
            'trash': (properties) => Trash(properties.position ?? Vector2(8, 16)),
          }
      ),
      player: MainPlayer(Vector2(0,0)),
      overlayBuilderMap: {
        'gameStats': (context, game) => const GameStatsWidget(),
      },
      initialActiveOverlays: const ['gameStats']
    );
  }
}
