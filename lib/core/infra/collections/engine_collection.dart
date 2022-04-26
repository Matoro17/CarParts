import 'package:isar/isar.dart';

part 'engine_collection.g.dart';

@Collection()
class EngineCollection {
  @Id()
  int id = Isar.autoIncrement;
  final String name;
  final double capacity;

  EngineCollection(this.name, this.capacity);
}
