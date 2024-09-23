import 'package:json_annotation/json_annotation.dart';

part 'geo_code_full.g.dart';

@JsonSerializable()
class GeoCodeFullModel {
  final String country;
  final String region;
  final String city;
  final String street;
  final String house;

  GeoCodeFullModel(
      {required this.country,
      required this.region,
      required this.city,
      required this.house,
      required this.street});

  factory GeoCodeFullModel.fromJson(Map<String, dynamic> json) =>
      _$GeoCodeFullModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeoCodeFullModelToJson(this);
}
