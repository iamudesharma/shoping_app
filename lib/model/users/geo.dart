import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo.freezed.dart';
part 'geo.g.dart';

@JsonSerializable(explicitToJson: true)
@freezed
abstract class Geo with _$Geo {
  factory Geo({
    required double lat,
    required double lng,
  }) = _Geo;
  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}
