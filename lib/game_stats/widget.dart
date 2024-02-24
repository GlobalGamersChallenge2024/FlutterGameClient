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
            padding: const EdgeInsets.only(left: 45, top: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Trash: ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      controller.trash.toString(),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Fish: ',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                    Text(
                      controller.fish.toString(),
                      style: const TextStyle(color: Colors.lightBlueAccent),
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