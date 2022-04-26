import 'package:isar/isar.dart';
import 'package:sqlcrud/core/infra/collections/car_model.dart';
import 'package:sqlcrud/core/infra/collections/products_collection.dart';

import 'engine_collection.dart';

part 'compatible_products_collection.g.dart';

@Collection()
class CompatibleProductsCollection {
  @Id()
  int id = Isar.autoIncrement;

  IsarLink<CarModelCollection> car;
  IsarLink<EngineCollection> engine;
  IsarLinks<ProductsCollection> products;

  CompatibleProductsCollection()
      : car = IsarLink<CarModelCollection>(),
        engine = IsarLink<EngineCollection>(),
        products = IsarLinks<ProductsCollection>();
}
