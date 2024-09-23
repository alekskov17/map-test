// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slides_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlidersSliderModel _$SlidersSliderModelFromJson(Map<String, dynamic> json) =>
    SlidersSliderModel(
      name: json['name'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => SliderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SlidersSliderModelToJson(SlidersSliderModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'items': instance.items,
    };
