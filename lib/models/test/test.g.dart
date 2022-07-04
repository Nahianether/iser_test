// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTestDataCollection on Isar {
  IsarCollection<TestData> get testDatas => getCollection();
}

const TestDataSchema = CollectionSchema(
  name: 'TestData',
  schema:
      '{"name":"TestData","idName":"id","properties":[{"name":"age","type":"Long"},{"name":"birthday","type":"Long"},{"name":"isActive","type":"Bool"},{"name":"name","type":"String"}],"indexes":[{"name":"age","unique":false,"properties":[{"name":"age","type":"Value","caseSensitive":false}]},{"name":"birthday","unique":false,"properties":[{"name":"birthday","type":"Value","caseSensitive":false}]},{"name":"isActive","unique":false,"properties":[{"name":"isActive","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {'age': 0, 'birthday': 1, 'isActive': 2, 'name': 3},
  listProperties: {},
  indexIds: {'age': 0, 'birthday': 1, 'isActive': 2},
  indexValueTypes: {
    'age': [
      IndexValueType.long,
    ],
    'birthday': [
      IndexValueType.long,
    ],
    'isActive': [
      IndexValueType.bool,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _testDataGetId,
  setId: _testDataSetId,
  getLinks: _testDataGetLinks,
  attachLinks: _testDataAttachLinks,
  serializeNative: _testDataSerializeNative,
  deserializeNative: _testDataDeserializeNative,
  deserializePropNative: _testDataDeserializePropNative,
  serializeWeb: _testDataSerializeWeb,
  deserializeWeb: _testDataDeserializeWeb,
  deserializePropWeb: _testDataDeserializePropWeb,
  version: 3,
);

int? _testDataGetId(TestData object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _testDataSetId(TestData object, int id) {
  object.id = id;
}

List<IsarLinkBase> _testDataGetLinks(TestData object) {
  return [];
}

void _testDataSerializeNative(
    IsarCollection<TestData> collection,
    IsarRawObject rawObj,
    TestData object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.age;
  final _age = value0;
  final value1 = object.birthday;
  final _birthday = value1;
  final value2 = object.isActive;
  final _isActive = value2;
  final value3 = object.name;
  IsarUint8List? _name;
  if (value3 != null) {
    _name = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_name?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _age);
  writer.writeDateTime(offsets[1], _birthday);
  writer.writeBool(offsets[2], _isActive);
  writer.writeBytes(offsets[3], _name);
}

TestData _testDataDeserializeNative(IsarCollection<TestData> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = TestData(
    age: reader.readLongOrNull(offsets[0]),
    birthday: reader.readDateTimeOrNull(offsets[1]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _testDataDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _testDataSerializeWeb(
    IsarCollection<TestData> collection, TestData object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'age', object.age);
  IsarNative.jsObjectSet(
      jsObj, 'birthday', object.birthday?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isActive', object.isActive);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

TestData _testDataDeserializeWeb(
    IsarCollection<TestData> collection, dynamic jsObj) {
  final object = TestData(
    age: IsarNative.jsObjectGet(jsObj, 'age'),
    birthday: IsarNative.jsObjectGet(jsObj, 'birthday') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'birthday'),
                isUtc: true)
            .toLocal()
        : null,
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    isActive: IsarNative.jsObjectGet(jsObj, 'isActive'),
    name: IsarNative.jsObjectGet(jsObj, 'name'),
  );
  return object;
}

P _testDataDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'age':
      return (IsarNative.jsObjectGet(jsObj, 'age')) as P;
    case 'birthday':
      return (IsarNative.jsObjectGet(jsObj, 'birthday') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'birthday'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isActive':
      return (IsarNative.jsObjectGet(jsObj, 'isActive')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _testDataAttachLinks(IsarCollection col, int id, TestData object) {}

extension TestDataQueryWhereSort on QueryBuilder<TestData, TestData, QWhere> {
  QueryBuilder<TestData, TestData, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TestData, TestData, QAfterWhere> anyAge() {
    return addWhereClauseInternal(const IndexWhereClause.any(indexName: 'age'));
  }

  QueryBuilder<TestData, TestData, QAfterWhere> anyBirthday() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'birthday'));
  }

  QueryBuilder<TestData, TestData, QAfterWhere> anyIsActive() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'isActive'));
  }
}

extension TestDataQueryWhere on QueryBuilder<TestData, TestData, QWhereClause> {
  QueryBuilder<TestData, TestData, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<TestData, TestData, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> idBetween(
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

  QueryBuilder<TestData, TestData, QAfterWhereClause> ageEqualTo(int? age) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'age',
      value: [age],
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> ageNotEqualTo(int? age) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'age',
        upper: [age],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'age',
        lower: [age],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'age',
        lower: [age],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'age',
        upper: [age],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> ageIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'age',
      value: [null],
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> ageIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'age',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> ageGreaterThan(
    int? age, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'age',
      lower: [age],
      includeLower: include,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> ageLessThan(
    int? age, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'age',
      upper: [age],
      includeUpper: include,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> ageBetween(
    int? lowerAge,
    int? upperAge, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'age',
      lower: [lowerAge],
      includeLower: includeLower,
      upper: [upperAge],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> birthdayEqualTo(
      DateTime? birthday) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'birthday',
      value: [birthday],
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> birthdayNotEqualTo(
      DateTime? birthday) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'birthday',
        upper: [birthday],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'birthday',
        lower: [birthday],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'birthday',
        lower: [birthday],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'birthday',
        upper: [birthday],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> birthdayIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'birthday',
      value: [null],
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> birthdayIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'birthday',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> birthdayGreaterThan(
    DateTime? birthday, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'birthday',
      lower: [birthday],
      includeLower: include,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> birthdayLessThan(
    DateTime? birthday, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'birthday',
      upper: [birthday],
      includeUpper: include,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> birthdayBetween(
    DateTime? lowerBirthday,
    DateTime? upperBirthday, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'birthday',
      lower: [lowerBirthday],
      includeLower: includeLower,
      upper: [upperBirthday],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> isActiveEqualTo(
      bool? isActive) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'isActive',
      value: [isActive],
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> isActiveNotEqualTo(
      bool? isActive) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'isActive',
        upper: [isActive],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'isActive',
        lower: [isActive],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'isActive',
        lower: [isActive],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'isActive',
        upper: [isActive],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> isActiveIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'isActive',
      value: [null],
    ));
  }

  QueryBuilder<TestData, TestData, QAfterWhereClause> isActiveIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'isActive',
      lower: [null],
      includeLower: false,
    ));
  }
}

extension TestDataQueryFilter
    on QueryBuilder<TestData, TestData, QFilterCondition> {
  QueryBuilder<TestData, TestData, QAfterFilterCondition> ageIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'age',
      value: null,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> ageEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> ageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> ageLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> ageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'age',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> birthdayIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'birthday',
      value: null,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> birthdayEqualTo(
      DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'birthday',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> birthdayGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'birthday',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> birthdayLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'birthday',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> birthdayBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'birthday',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> isActiveIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'isActive',
      value: null,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isActive',
      value: value,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameGreaterThan(
    String? value, {
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameLessThan(
    String? value, {
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TestData, TestData, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension TestDataQueryLinks
    on QueryBuilder<TestData, TestData, QFilterCondition> {}

extension TestDataQueryWhereSortBy
    on QueryBuilder<TestData, TestData, QSortBy> {
  QueryBuilder<TestData, TestData, QAfterSortBy> sortByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByBirthday() {
    return addSortByInternal('birthday', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByBirthdayDesc() {
    return addSortByInternal('birthday', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByIsActive() {
    return addSortByInternal('isActive', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByIsActiveDesc() {
    return addSortByInternal('isActive', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension TestDataQueryWhereSortThenBy
    on QueryBuilder<TestData, TestData, QSortThenBy> {
  QueryBuilder<TestData, TestData, QAfterSortBy> thenByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByBirthday() {
    return addSortByInternal('birthday', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByBirthdayDesc() {
    return addSortByInternal('birthday', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByIsActive() {
    return addSortByInternal('isActive', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByIsActiveDesc() {
    return addSortByInternal('isActive', Sort.desc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<TestData, TestData, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension TestDataQueryWhereDistinct
    on QueryBuilder<TestData, TestData, QDistinct> {
  QueryBuilder<TestData, TestData, QDistinct> distinctByAge() {
    return addDistinctByInternal('age');
  }

  QueryBuilder<TestData, TestData, QDistinct> distinctByBirthday() {
    return addDistinctByInternal('birthday');
  }

  QueryBuilder<TestData, TestData, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TestData, TestData, QDistinct> distinctByIsActive() {
    return addDistinctByInternal('isActive');
  }

  QueryBuilder<TestData, TestData, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension TestDataQueryProperty
    on QueryBuilder<TestData, TestData, QQueryProperty> {
  QueryBuilder<TestData, int?, QQueryOperations> ageProperty() {
    return addPropertyNameInternal('age');
  }

  QueryBuilder<TestData, DateTime?, QQueryOperations> birthdayProperty() {
    return addPropertyNameInternal('birthday');
  }

  QueryBuilder<TestData, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TestData, bool?, QQueryOperations> isActiveProperty() {
    return addPropertyNameInternal('isActive');
  }

  QueryBuilder<TestData, String?, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
