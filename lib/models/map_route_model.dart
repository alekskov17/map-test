import 'package:json_annotation/json_annotation.dart';
import '../models/geo_code_item.dart';

part 'map_route_model.g.dart';

@JsonSerializable()
class MapRouteModel {
  final GeoCodeItemModel from;
  final GeoCodeItemModel to;
  final GeoCodeItemModel? ft;
  final List<GeoCodeItemModel> dops;

  MapRouteModel(
      {required this.from,
      required this.to,
      required this.ft,
      required this.dops});

  factory MapRouteModel.fromJson(Map<String, dynamic> json) =>
      _$MapRouteModelFromJson(json);

  Map<String, dynamic> toJson() => _$MapRouteModelToJson(this);
}
