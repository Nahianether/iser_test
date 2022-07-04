
import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pattern/models/test/test.dart';

late final Isar isar;

void watchIsar() => isar.testDatas.watchLazy().listen(
    (_) async => print('Iserted ${await isar.testDatas.count()} testDatas'));


Future<void> readTest() async {
  return compute(_readTest, await getApplicationDocumentsDirectory());
}

Future<void> _readTest(Directory dir) async {
  isar = await Isar.open(
    schemas: [TestDataSchema],
    directory: join(dir.path, 'isar_test'),
  );
  print('Total testDatas: ${await isar.testDatas.count()}');
  final testDatas =
      await isar.testDatas.filter().isActiveEqualTo(true).findAll();
  print('Active testDatas: ${testDatas.length}');
}

Future<void> writeTest() async => isar.writeTxn(
      (isr) async {
        isr.testDatas.put(TestData(
          name: 'name ${DateTime.now()}',
          age: DateTime.now().millisecondsSinceEpoch,
          birthday: DateTime.now(),
          isActive: true,
        ));
      },
    );

Stream<List<TestData>> isolateTest() async* {
  final port = ReceivePort();
  final c = StreamController<List<TestData>>();
  Isolate.spawn(
    _isolateTest,
    [await getApplicationDocumentsDirectory(), port.sendPort],
  );
  port.listen((v) => c.add(v));
  yield* c.stream;
}

void _isolateTest(List<dynamic> p) async {
  final dir = p.first as Directory;
  isar = await Isar.open(
    schemas: [TestDataSchema],
    directory: join(dir.path, 'isar_test'),
  );
  isar.testDatas
      .where(sort: Sort.desc)
      .anyId()
      .limit(1000)
      .watch(initialReturn: true)
      .listen((v) => p.last.send(v));
}