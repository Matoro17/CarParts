import 'package:isar/isar.dart';

part 'products_collection.g.dart';

@Collection()
class ProductsCollection {
  @Id()
  int id = Isar.autoIncrement;
  final String name;
  final String type;

  ProductsCollection(this.name, this.type);
}
