import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:sqlcrud/core/infra/collections/brand_collection.dart';
import 'package:sqlcrud/core/infra/collections/car_model.dart';
import 'package:sqlcrud/core/infra/collections/compatible_products_collection.dart';
import 'package:sqlcrud/core/infra/collections/engine_collection.dart';
import 'package:sqlcrud/core/infra/collections/products_collection.dart';

mixin IsarProvider {
  static late final Isar _isarInstance;
  static bool _isInitialized = false;

  bool get isIsarInit => _isInitialized;

  Future<void> initIsar() async {
    final path = "databaseDirectory";
    _isarInstance = await Isar.open(
      schemas: [
        ProductsCollectionSchema,
        BrandCollectionSchema,
        CarModelCollectionSchema,
        CompatibleProductsCollectionSchema,
        EngineCollectionSchema,
      ],
      directory: path,
      inspector: kDebugMode, // if want to enable the inspector for debug
    );
    _isInitialized = true;
  }

  static Isar get isar {
    return _isarInstance;
  }
}
