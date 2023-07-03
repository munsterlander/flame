import 'package:dashbook/dashbook.dart';
import 'package:examples/commons/commons.dart';
import 'package:examples/stories/bridge_libraries/flame_tiled/flame_tiled_example.dart';
import 'package:flame/game.dart';

void addFlameTiledExample(Dashbook dashbook) {
  dashbook.storiesOf('FlameTiled').add(
        'Basic Tiled example',
        (_) => GameWidget(
          game: FlameTiledExample(),
        ),
        codeLink: baseLink('flame_tiled/flame_tiled_example.dart'),
        info: FlameTiledExample.description,
      );
}
