// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Favourite extends _Favourite
    with RealmEntity, RealmObjectBase, RealmObject {
  Favourite(
    int id,
    String title,
    String posterPath,
    String releaseDate,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'posterPath', posterPath);
    RealmObjectBase.set(this, 'releaseDate', releaseDate);
  }

  Favourite._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get posterPath =>
      RealmObjectBase.get<String>(this, 'posterPath') as String;
  @override
  set posterPath(String value) =>
      RealmObjectBase.set(this, 'posterPath', value);

  @override
  String get releaseDate =>
      RealmObjectBase.get<String>(this, 'releaseDate') as String;
  @override
  set releaseDate(String value) =>
      RealmObjectBase.set(this, 'releaseDate', value);

  @override
  Stream<RealmObjectChanges<Favourite>> get changes =>
      RealmObjectBase.getChanges<Favourite>(this);

  @override
  Favourite freeze() => RealmObjectBase.freezeObject<Favourite>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'title': title.toEJson(),
      'posterPath': posterPath.toEJson(),
      'releaseDate': releaseDate.toEJson(),
    };
  }

  static EJsonValue _toEJson(Favourite value) => value.toEJson();
  static Favourite _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'title': EJsonValue title,
        'posterPath': EJsonValue posterPath,
        'releaseDate': EJsonValue releaseDate,
      } =>
        Favourite(
          fromEJson(id),
          fromEJson(title),
          fromEJson(posterPath),
          fromEJson(releaseDate),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Favourite._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Favourite, 'Favourite', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('posterPath', RealmPropertyType.string),
      SchemaProperty('releaseDate', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
