// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetEngineCollectionCollection on Isar {
  IsarCollection<EngineCollection> get engineCollections => getCollection();
}

const EngineCollectionSchema = CollectionSchema(
  name: 'EngineCollection',
  schema:
      '{"name":"EngineCollection","idName":"id","properties":[{"name":"capacity","type":"Double"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'capacity': 0, 'name': 1},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _engineCollectionGetId,
  setId: _engineCollectionSetId,
  getLinks: _engineCollectionGetLinks,
  attachLinks: _engineCollectionAttachLinks,
  serializeNative: _engineCollectionSerializeNative,
  deserializeNative: _engineCollectionDeserializeNative,
  deserializePropNative: _engineCollectionDeserializePropNative,
  serializeWeb: _engineCollectionSerializeWeb,
  deserializeWeb: _engineCollectionDeserializeWeb,
  deserializePropWeb: _engineCollectionDeserializePropWeb,
  version: 3,
);

int? _engineCollectionGetId(EngineCollection object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _engineCollectionSetId(EngineCollection object, int id) {
  object.id = id;
}

List<IsarLinkBase> _engineCollectionGetLinks(EngineCollection object) {
  return [];
}

void _engineCollectionSerializeNative(
    IsarCollection<EngineCollection> collection,
    IsarRawObject rawObj,
    EngineCollection object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.capacity;
  final _capacity = value0;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _capacity);
  writer.writeBytes(offsets[1], _name);
}

EngineCollection _engineCollectionDeserializeNative(
    IsarCollection<EngineCollection> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = EngineCollection(
    reader.readString(offsets[1]),
    reader.readDouble(offsets[0]),
  );
  object.id = id;
  return object;
}

P _engineCollectionDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _engineCollectionSerializeWeb(
    IsarCollection<EngineCollection> collection, EngineCollection object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'capacity', object.capacity);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

EngineCollection _engineCollectionDeserializeWeb(
    IsarCollection<EngineCollection> collection, dynamic jsObj) {
  final object = EngineCollection(
    IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    IsarNative.jsObjectGet(jsObj, 'capacity') ?? double.negativeInfinity,
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  return object;
}

P _engineCollectionDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'capacity':
      return (IsarNative.jsObjectGet(jsObj, 'capacity') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _engineCollectionAttachLinks(
    IsarCollection col, int id, EngineCollection object) {}

extension EngineCollectionQueryWhereSort
    on QueryBuilder<EngineCollection, EngineCollection, QWhere> {
  QueryBuilder<EngineCollection, EngineCollection, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension EngineCollectionQueryWhere
    on QueryBuilder<EngineCollection, EngineCollection, QWhereClause> {
  QueryBuilder<EngineCollection, EngineCollection, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterWhereClause>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterWhereClause> idBetween(
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

extension EngineCollectionQueryFilter
    on QueryBuilder<EngineCollection, EngineCollection, QFilterCondition> {
  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
      capacityGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'capacity',
      value: value,
    ));
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
      capacityLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'capacity',
      value: value,
    ));
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
      capacityBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'capacity',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
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

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension EngineCollectionQueryLinks
    on QueryBuilder<EngineCollection, EngineCollection, QFilterCondition> {}

extension EngineCollectionQueryWhereSortBy
    on QueryBuilder<EngineCollection, EngineCollection, QSortBy> {
  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      sortByCapacity() {
    return addSortByInternal('capacity', Sort.asc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      sortByCapacityDesc() {
    return addSortByInternal('capacity', Sort.desc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension EngineCollectionQueryWhereSortThenBy
    on QueryBuilder<EngineCollection, EngineCollection, QSortThenBy> {
  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      thenByCapacity() {
    return addSortByInternal('capacity', Sort.asc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      thenByCapacityDesc() {
    return addSortByInternal('capacity', Sort.desc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<EngineCollection, EngineCollection, QAfterSortBy>
      thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension EngineCollectionQueryWhereDistinct
    on QueryBuilder<EngineCollection, EngineCollection, QDistinct> {
  QueryBuilder<EngineCollection, EngineCollection, QDistinct>
      distinctByCapacity() {
    return addDistinctByInternal('capacity');
  }

  QueryBuilder<EngineCollection, EngineCollection, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<EngineCollection, EngineCollection, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension EngineCollectionQueryProperty
    on QueryBuilder<EngineCollection, EngineCollection, QQueryProperty> {
  QueryBuilder<EngineCollection, double, QQueryOperations> capacityProperty() {
    return addPropertyNameInternal('capacity');
  }

  QueryBuilder<EngineCollection, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<EngineCollection, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
