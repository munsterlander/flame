import 'dart:io';

File fixture(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('${Platform.pathSeparator}test')) {
    dir = dir.replaceAll('${Platform.pathSeparator}test', '');
  }
  return File(
      '$dir${Platform.pathSeparator}test${Platform.pathSeparator}_resources${Platform.pathSeparator}$name');
}

String fixtureForString(String name) =>
    File('test${Platform.pathSeparator}fixtures${Platform.pathSeparator}$name')
        .readAsStringSync();
