import 'dart:io';

String getInput(String title) {
  return new File('./assets/${title}.txt').readAsStringSync();
}
