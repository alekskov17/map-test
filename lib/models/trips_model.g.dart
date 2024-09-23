// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trips_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripsModel _$TripsModelFromJson(Map<String, dynamic> json) => TripsModel(
      trips: (json['trips'] as List<dynamic>)
          .map((e) => TripItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TripsModelToJson(TripsModel instance) =>
    <String, dynamic>{
      'trips': instance.trips,
    };
