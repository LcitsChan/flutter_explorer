import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

@freezed
abstract class License with _$License {
  const factory License({
    String key,
    String name,
    @JsonKey(name: 'spdx_id')
    String spdxId,
    String url,
    @JsonKey(name: 'node_id')
    String nodeId
}) = _License;
  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}