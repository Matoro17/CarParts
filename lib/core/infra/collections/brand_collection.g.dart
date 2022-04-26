// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetBrandCollectionCollection on Isar {
  IsarCollection<BrandCollection> get brandCollections => getCollection();
}

const BrandCollectionSchema = CollectionSchema(
  name: 'BrandCollection',
  schema:
      '{"name":"BrandCollection","idName":"id","properties":[{"name":"name","type":"String"}],"indexes":[],"links":[{"name":"cars","target":"CarModelCollection"}]}',
  idName: 'id',
  propertyIds: {'name': 0},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'cars': 0},
  backlinkLinkNames: {},
  getId: _brandCollectionGetId,
  setId: _brandCollectionSetId,
  getLinks: _brandCollectionGetLinks,
  attachLinks: _brandCollectionAttachLinks,
  serializeNative: _brandCollectionSerializeNative,
  deserializeNative: _brandCollectionDeserializeNative,
  deserializePropNative: _brandCollectionDeserializePropNative,
  serializeWeb: _brandCollectionSerializeWeb,
  deserializeWeb: _brandCollectionDeserializeWeb,
  deserializePropWeb: _brandCollectionDeserializePropWeb,
  version: 3,
);

int? _brandCollectionGetId(BrandCollection object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _brandCollectionSetId(BrandCollection object, int id) {
  object.id = id;
}

List<IsarLinkBase> _brandCollectionGetLinks(BrandCollection object) {
  return [object.cars];
}

void _brandCollectionSerializeNative(
    IsarCollection<BrandCollection> collection,
    IsarRawObject rawObj,
    BrandCollection object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _name);
}

BrandCollection _brandCollectionDeserializeNative(
    IsarCollection<BrandCollection> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = BrandCollection(
    reader.readString(offsets[0]),
  );
  object.id = id;
  _brandCollectionAttachLinks(collection, id, object);
  return object;
}

P _brandCollectionDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _brandCollectionSerializeWeb(
    IsarCollection<BrandCollection> collection, BrandCollection object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

BrandCollection _brandCollectionDeserializeWeb(
    IsarCollection<BrandCollection> collection, dynamic jsObj) {
  final object = BrandCollection(
    IsarNative.jsObjectGet(jsObj, 'name') ?? '',
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  _brandCollectionAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _brandCollectionDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _brandCollectionAttachLinks(
    IsarCollection col, int id, BrandCollection object) {
  object.cars.attach(col, col.isar.carModelCollections, 'cars', id);
}

extension BrandCollectionQueryWhereSort
    on QueryBuilder<BrandCollection, BrandCollection, QWhere> {
  QueryBuilder<BrandCollection, BrandCollection, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension BrandCollectionQueryWhere
    on QueryBuilder<BrandCollection, BrandCollection, QWhereClause> {
  QueryBuilder<BrandCollection, BrandCollection, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterWhereClause>
      idNotEqualTo(int id) {
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

  QueryBuilder<BrandCollection, BrandCollection, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterWhereClause> idBetween(
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

extension BrandCollectionQueryFilter
    on QueryBuilder<BrandCollection, BrandCollection, QFilterCondition> {
  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension BrandCollectionQueryLinks
    on QueryBuilder<BrandCollection, BrandCollection, QFilterCondition> {
  QueryBuilder<BrandCollection, BrandCollection, QAfterFilterCondition> cars(
      FilterQuery<CarModelCollection> q) {
    return linkInternal(
      isar.carModelCollections,
      q,
      'cars',
    );
  }
}

extension BrandCollectionQueryWhereSortBy
    on QueryBuilder<BrandCollection, BrandCollection, QSortBy> {
  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy>
      sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension BrandCollectionQueryWhereSortThenBy
    on QueryBuilder<BrandCollection, BrandCollection, QSortThenBy> {
  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<BrandCollection, BrandCollection, QAfterSortBy>
      thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension BrandCollectionQueryWhereDistinct
    on QueryBuilder<BrandCollection, BrandCollection, QDistinct> {
  QueryBuilder<BrandCollection, BrandCollection, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<BrandCollection, BrandCollection, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension BrandCollectionQueryProperty
    on QueryBuilder<BrandCollection, BrandCollection, QQueryProperty> {
  QueryBuilder<BrandCollection, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<BrandCollection, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
