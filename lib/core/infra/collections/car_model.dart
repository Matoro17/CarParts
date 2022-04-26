import 'package:isar/isar.dart';
import 'package:sqlcrud/core/infra/collections/engine_collection.dart';

part 'car_model.g.dart';

@Collection()
class CarModelCollection {
  @Id()
  int id = Isar.autoIncrement;
  final String name;
  final IsarLinks<EngineCollection> engines;

  CarModelCollection(this.name) : engines = IsarLinks<EngineCollection>();
}
