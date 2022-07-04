import 'package:isar/isar.dart';

part 'test.g.dart';

@Collection()
class TestData {
  int? id;
  String? name;
  @Index()
  int? age;
  @Index()
  DateTime? birthday;
  @Index()
  bool? isActive;

  TestData({
    this.id,
    this.name,
    this.age,
    this.birthday,
    this.isActive,
  });
}
