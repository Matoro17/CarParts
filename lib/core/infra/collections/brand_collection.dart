import 'package:isar/isar.dart';
import 'package:sqlcrud/core/infra/collections/car_model.dart';

part 'brand_collection.g.dart';

@Collection()
class BrandCollection {
  @Id()
  int id = Isar.autoIncrement;
  final String name;
  final IsarLink<CarModelCollection> cars;

  BrandCollection(this.name) : cars = IsarLink<CarModelCollection>();
}
