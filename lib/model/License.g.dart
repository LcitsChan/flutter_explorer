// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'License.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

License _$LicenseFromJson(Map<String, dynamic> json) {
  return License(
    json['key'] as String,
    json['name'] as String,
    json['spdx_id'] as String,
    json['url'] as String,
    json['node_id'] as String,
  );
}

Map<String, dynamic> _$LicenseToJson(License instance) => <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url,
      'node_id': instance.nodeId,
    };
