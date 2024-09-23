// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapRouteModel _$MapRouteModelFromJson(Map<String, dynamic> json) =>
    MapRouteModel(
      from: GeoCodeItemModel.fromJson(json['from'] as Map<String, dynamic>),
      to: GeoCodeItemModel.fromJson(json['to'] as Map<String, dynamic>),
      ft: json['ft'] == null
          ? null
          : GeoCodeItemModel.fromJson(json['ft'] as Map<String, dynamic>),
      dops: (json['dops'] as List<dynamic>)
          .map((e) => GeoCodeItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MapRouteModelToJson(MapRouteModel instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'ft': instance.ft,
      'dops': instance.dops,
    };
