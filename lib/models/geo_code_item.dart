import 'package:json_annotation/json_annotation.dart';
import './geo_code_full.dart';

part 'geo_code_item.g.dart';

@JsonSerializable()
class GeoCodeItemModel {
  final String name;
  final double lat; //шировта
  final double lng; //долгота
  final GeoCodeFullModel? full;

  GeoCodeItemModel(
      {required this.name,
      required this.lat,
      required this.lng,
      required this.full});

  factory GeoCodeItemModel.fromJson(Map<String, dynamic> json) =>
      _$GeoCodeItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeoCodeItemModelToJson(this);
}
