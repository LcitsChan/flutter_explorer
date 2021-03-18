// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
License _$LicenseFromJson(Map<String, dynamic> json) {
  return _License.fromJson(json);
}

/// @nodoc
class _$LicenseTearOff {
  const _$LicenseTearOff();

// ignore: unused_element
  _License call(
      {String key,
      String name,
      @JsonKey(name: 'spdx_id') String spdxId,
      String url,
      @JsonKey(name: 'node_id') String nodeId}) {
    return _License(
      key: key,
      name: name,
      spdxId: spdxId,
      url: url,
      nodeId: nodeId,
    );
  }

// ignore: unused_element
  License fromJson(Map<String, Object> json) {
    return License.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $License = _$LicenseTearOff();

/// @nodoc
mixin _$License {
  String get key;
  String get name;
  @JsonKey(name: 'spdx_id')
  String get spdxId;
  String get url;
  @JsonKey(name: 'node_id')
  String get nodeId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LicenseCopyWith<License> get copyWith;
}

/// @nodoc
abstract class $LicenseCopyWith<$Res> {
  factory $LicenseCopyWith(License value, $Res Function(License) then) =
      _$LicenseCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String name,
      @JsonKey(name: 'spdx_id') String spdxId,
      String url,
      @JsonKey(name: 'node_id') String nodeId});
}

/// @nodoc
class _$LicenseCopyWithImpl<$Res> implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._value, this._then);

  final License _value;
  // ignore: unused_field
  final $Res Function(License) _then;

  @override
  $Res call({
    Object key = freezed,
    Object name = freezed,
    Object spdxId = freezed,
    Object url = freezed,
    Object nodeId = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      spdxId: spdxId == freezed ? _value.spdxId : spdxId as String,
      url: url == freezed ? _value.url : url as String,
      nodeId: nodeId == freezed ? _value.nodeId : nodeId as String,
    ));
  }
}

/// @nodoc
abstract class _$LicenseCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$LicenseCopyWith(_License value, $Res Function(_License) then) =
      __$LicenseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key,
      String name,
      @JsonKey(name: 'spdx_id') String spdxId,
      String url,
      @JsonKey(name: 'node_id') String nodeId});
}

/// @nodoc
class __$LicenseCopyWithImpl<$Res> extends _$LicenseCopyWithImpl<$Res>
    implements _$LicenseCopyWith<$Res> {
  __$LicenseCopyWithImpl(_License _value, $Res Function(_License) _then)
      : super(_value, (v) => _then(v as _License));

  @override
  _License get _value => super._value as _License;

  @override
  $Res call({
    Object key = freezed,
    Object name = freezed,
    Object spdxId = freezed,
    Object url = freezed,
    Object nodeId = freezed,
  }) {
    return _then(_License(
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      spdxId: spdxId == freezed ? _value.spdxId : spdxId as String,
      url: url == freezed ? _value.url : url as String,
      nodeId: nodeId == freezed ? _value.nodeId : nodeId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_License with DiagnosticableTreeMixin implements _License {
  const _$_License(
      {this.key,
      this.name,
      @JsonKey(name: 'spdx_id') this.spdxId,
      this.url,
      @JsonKey(name: 'node_id') this.nodeId});

  factory _$_License.fromJson(Map<String, dynamic> json) =>
      _$_$_LicenseFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  @JsonKey(name: 'spdx_id')
  final String spdxId;
  @override
  final String url;
  @override
  @JsonKey(name: 'node_id')
  final String nodeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'License(key: $key, name: $name, spdxId: $spdxId, url: $url, nodeId: $nodeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'License'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('spdxId', spdxId))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('nodeId', nodeId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _License &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.spdxId, spdxId) ||
                const DeepCollectionEquality().equals(other.spdxId, spdxId)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.nodeId, nodeId) ||
                const DeepCollectionEquality().equals(other.nodeId, nodeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(spdxId) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(nodeId);

  @JsonKey(ignore: true)
  @override
  _$LicenseCopyWith<_License> get copyWith =>
      __$LicenseCopyWithImpl<_License>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LicenseToJson(this);
  }
}

abstract class _License implements License {
  const factory _License(
      {String key,
      String name,
      @JsonKey(name: 'spdx_id') String spdxId,
      String url,
      @JsonKey(name: 'node_id') String nodeId}) = _$_License;

  factory _License.fromJson(Map<String, dynamic> json) = _$_License.fromJson;

  @override
  String get key;
  @override
  String get name;
  @override
  @JsonKey(name: 'spdx_id')
  String get spdxId;
  @override
  String get url;
  @override
  @JsonKey(name: 'node_id')
  String get nodeId;
  @override
  @JsonKey(ignore: true)
  _$LicenseCopyWith<_License> get copyWith;
}
