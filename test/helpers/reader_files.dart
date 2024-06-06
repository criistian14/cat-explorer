import 'dart:io';

String readFile(String name) =>
    File('test/example_data/$name').readAsStringSync();
