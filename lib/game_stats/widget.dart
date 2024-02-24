import 'package:flutter/material.dart';
import 'controller.dart';

class GameStatsWidget extends StatelessWidget {
  const GameStatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GameStatsController();
    return Material(
      type: MaterialType.transparency,
      child: ListenableBuilder(
        listenable: controller,
        builder: (context, _) {
          return Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Fish: ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      controller.fish.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}