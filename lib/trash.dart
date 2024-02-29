import 'package:bonfire/bonfire.dart';
import 'package:bonfire/decoration/decoration.dart';

class Trash extends GameDecoration {
  Trash(Vector2 position) : super.withSprite(
    sprite: Sprite.load('trash/trash.png'),
    position: position,
    size: Vector2(16, 16),
  );

  @override
  void update(double dt) {
    // do anything
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    // do anything
    super.render(canvas);
  }
}