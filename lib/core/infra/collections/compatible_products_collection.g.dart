// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compatible_products_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetCompatibleProductsCollectionCollection on Isar {
  IsarCollection<CompatibleProductsCollection>
      get compatibleProductsCollections => getCollection();
}

const CompatibleProductsCollectionSchema = CollectionSchema(
  name: 'CompatibleProductsCollection',
  schema:
      '{"name":"CompatibleProductsCollection","idName":"id","properties":[],"indexes":[],"links":[{"name":"car","target":"CarModelCollection"},{"name":"engine","target":"EngineCollection"},{"name":"products","target":"ProductsCollection"}]}',
  idName: 'id',
  propertyIds: {},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'car': 0, 'engine': 1, 'products': 2},
  backlinkLinkNames: {},
  getId: _compatibleProductsCollectionGetId,
  setId: _compatibleProductsCollectionSetId,
  getLinks: _compatibleProductsCollectionGetLinks,
  attachLinks: _compatibleProductsCollectionAttachLinks,
  serializeNative: _compatibleProductsCollectionSerializeNative,
  deserializeNative: _compatibleProductsCollectionDeserializeNative,
  deserializePropNative: _compatibleProductsCollectionDeserializePropNative,
  serializeWeb: _compatibleProductsCollectionSerializeWeb,
  deserializeWeb: _compatibleProductsCollectionDeserializeWeb,
  deserializePropWeb: _compatibleProductsCollectionDeserializePropWeb,
  version: 3,
);

int? _compatibleProductsCollectionGetId(CompatibleProductsCollection object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _compatibleProductsCollectionSetId(
    CompatibleProductsCollection object, int id) {
  object.id = id;
}

List<IsarLinkBase> _compatibleProductsCollectionGetLinks(
    CompatibleProductsCollection object) {
  return [object.car, object.engine, object.products];
}

void _compatibleProductsCollectionSerializeNative(
    IsarCollection<CompatibleProductsCollection> collection,
    IsarRawObject rawObj,
    CompatibleProductsCollection object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
}

CompatibleProductsCollection _compatibleProductsCollectionDeserializeNative(
    IsarCollection<CompatibleProductsCollection> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = CompatibleProductsCollection();
  object.id = id;
  _compatibleProductsCollectionAttachLinks(collection, id, object);
  return object;
}

P _compatibleProductsCollectionDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _compatibleProductsCollectionSerializeWeb(
    IsarCollection<CompatibleProductsCollection> collection,
    CompatibleProductsCollection object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  return jsObj;
}

CompatibleProductsCollection _compatibleProductsCollectionDeserializeWeb(
    IsarCollection<CompatibleProductsCollection> collection, dynamic jsObj) {
  final object = CompatibleProductsCollection();
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  _compatibleProductsCollectionAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _compatibleProductsCollectionDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _compatibleProductsCollectionAttachLinks(
    IsarCollection col, int id, CompatibleProductsCollection object) {
  object.car.attach(col, col.isar.carModelCollections, 'car', id);
  object.engine.attach(col, col.isar.engineCollections, 'engine', id);
  object.products.attach(col, col.isar.productsCollections, 'products', id);
}

extension CompatibleProductsCollectionQueryWhereSort on QueryBuilder<
    CompatibleProductsCollection, CompatibleProductsCollection, QWhere> {
  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension CompatibleProductsCollectionQueryWhere on QueryBuilder<
    CompatibleProductsCollection, CompatibleProductsCollection, QWhereClause> {
  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension CompatibleProductsCollectionQueryFilter on QueryBuilder<
    CompatibleProductsCollection,
    CompatibleProductsCollection,
    QFilterCondition> {
  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension CompatibleProductsCollectionQueryLinks on QueryBuilder<
    CompatibleProductsCollection,
    CompatibleProductsCollection,
    QFilterCondition> {
  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterFilterCondition> car(FilterQuery<CarModelCollection> q) {
    return linkInternal(
      isar.carModelCollections,
      q,
      'car',
    );
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterFilterCondition> engine(FilterQuery<EngineCollection> q) {
    return linkInternal(
      isar.engineCollections,
      q,
      'engine',
    );
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterFilterCondition> products(FilterQuery<ProductsCollection> q) {
    return linkInternal(
      isar.productsCollections,
      q,
      'products',
    );
  }
}

extension CompatibleProductsCollectionQueryWhereSortBy on QueryBuilder<
    CompatibleProductsCollection, CompatibleProductsCollection, QSortBy> {
  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension CompatibleProductsCollectionQueryWhereSortThenBy on QueryBuilder<
    CompatibleProductsCollection, CompatibleProductsCollection, QSortThenBy> {
  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension CompatibleProductsCollectionQueryWhereDistinct on QueryBuilder<
    CompatibleProductsCollection, CompatibleProductsCollection, QDistinct> {
  QueryBuilder<CompatibleProductsCollection, CompatibleProductsCollection,
      QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension CompatibleProductsCollectionQueryProperty on QueryBuilder<
    CompatibleProductsCollection,
    CompatibleProductsCollection,
    QQueryProperty> {
  QueryBuilder<CompatibleProductsCollection, int, QQueryOperations>
      idProperty() {
    return addPropertyNameInternal('id');
  }
}
