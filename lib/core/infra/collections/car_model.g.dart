// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetCarModelCollectionCollection on Isar {
  IsarCollection<CarModelCollection> get carModelCollections => getCollection();
}

const CarModelCollectionSchema = CollectionSchema(
  name: 'CarModelCollection',
  schema:
      '{"name":"CarModelCollection","idName":"id","properties":[{"name":"name","type":"String"}],"indexes":[],"links":[{"name":"engines","target":"EngineCollection"}]}',
  idName: 'id',
  propertyIds: {'name': 0},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'engines': 0},
  backlinkLinkNames: {},
  getId: _carModelCollectionGetId,
  setId: _carModelCollectionSetId,
  getLinks: _carModelCollectionGetLinks,
  attachLinks: _carModelCollectionAttachLinks,
  serializeNative: _carModelCollectionSerializeNative,
  deserializeNative: _carModelCollectionDeserializeNative,
  deserializePropNative: _carModelCollectionDeserializePropNative,
  serializeWeb: _carModelCollectionSerializeWeb,
  deserializeWeb: _carModelCollectionDeserializeWeb,
  deserializePropWeb: _carModelCollectionDeserializePropWeb,
  version: 3,
);

int? _carModelCollectionGetId(CarModelCollection object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _carModelCollectionSetId(CarModelCollection object, int id) {
  object.id = id;
}

List<IsarLinkBase> _carModelCollectionGetLinks(CarModelCollection object) {
  return [object.engines];
}

void _carModelCollectionSerializeNative(
    IsarCollection<CarModelCollection> collection,
    IsarRawObject rawObj,
    CarModelCollection object,
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

CarModelCollection _carModelCollectionDeserializeNative(
    IsarCollection<CarModelCollection> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = CarModelCollection(
    reader.readString(offsets[0]),
  );
  object.id = id;
  _carModelCollectionAttachLinks(collection, id, object);
  return object;
}

P _carModelCollectionDeserializePropNative<P>(
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

dynamic _carModelCollectionSerializeWeb(
    IsarCollection<CarModelCollection> collection, CarModelCollection object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

CarModelCollection _carModelCollectionDeserializeWeb(
    IsarCollection<CarModelCollection> collection, dynamic jsObj) {
  final object = CarModelCollection(
    IsarNative.jsObjectGet(jsObj, 'name') ?? '',
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  _carModelCollectionAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _carModelCollectionDeserializePropWeb<P>(Object jsObj, String propertyName) {
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

void _carModelCollectionAttachLinks(
    IsarCollection col, int id, CarModelCollection object) {
  object.engines.attach(col, col.isar.engineCollections, 'engines', id);
}

extension CarModelCollectionQueryWhereSort
    on QueryBuilder<CarModelCollection, CarModelCollection, QWhere> {
  QueryBuilder<CarModelCollection, CarModelCollection, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension CarModelCollectionQueryWhere
    on QueryBuilder<CarModelCollection, CarModelCollection, QWhereClause> {
  QueryBuilder<CarModelCollection, CarModelCollection, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterWhereClause>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterWhereClause>
      idBetween(
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

extension CarModelCollectionQueryFilter
    on QueryBuilder<CarModelCollection, CarModelCollection, QFilterCondition> {
  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
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

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension CarModelCollectionQueryLinks
    on QueryBuilder<CarModelCollection, CarModelCollection, QFilterCondition> {
  QueryBuilder<CarModelCollection, CarModelCollection, QAfterFilterCondition>
      engines(FilterQuery<EngineCollection> q) {
    return linkInternal(
      isar.engineCollections,
      q,
      'engines',
    );
  }
}

extension CarModelCollectionQueryWhereSortBy
    on QueryBuilder<CarModelCollection, CarModelCollection, QSortBy> {
  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension CarModelCollectionQueryWhereSortThenBy
    on QueryBuilder<CarModelCollection, CarModelCollection, QSortThenBy> {
  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QAfterSortBy>
      thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension CarModelCollectionQueryWhereDistinct
    on QueryBuilder<CarModelCollection, CarModelCollection, QDistinct> {
  QueryBuilder<CarModelCollection, CarModelCollection, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<CarModelCollection, CarModelCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension CarModelCollectionQueryProperty
    on QueryBuilder<CarModelCollection, CarModelCollection, QQueryProperty> {
  QueryBuilder<CarModelCollection, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<CarModelCollection, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
