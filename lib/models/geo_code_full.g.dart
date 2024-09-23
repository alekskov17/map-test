// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_code_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoCodeFullModel _$GeoCodeFullModelFromJson(Map<String, dynamic> json) =>
    GeoCodeFullModel(
      country: json['country'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
      house: json['house'] as String,
      street: json['street'] as String,
    );

Map<String, dynamic> _$GeoCodeFullModelToJson(GeoCodeFullModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'region': instance.region,
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
    };
