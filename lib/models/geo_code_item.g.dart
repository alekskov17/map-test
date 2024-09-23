// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_code_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoCodeItemModel _$GeoCodeItemModelFromJson(Map<String, dynamic> json) =>
    GeoCodeItemModel(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      full: json['full'] == null
          ? null
          : GeoCodeFullModel.fromJson(json['full'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeoCodeItemModelToJson(GeoCodeItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'full': instance.full,
    };
