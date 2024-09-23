// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avto_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvtoItemModel _$AvtoItemModelFromJson(Map<String, dynamic> json) =>
    AvtoItemModel(
      ID: json['ID'] as String?,
      UF_NAME: json['UF_NAME'] as String?,
      UF_TYPE: json['UF_TYPE'] as String?,
      UF_NUMBER: json['UF_NUMBER'] as String?,
      UF_YEAR: json['UF_YEAR'] as String?,
      UF_STAJ: json['UF_STAJ'] as String?,
      UF_NOMDER_VU: json['UF_NOMDER_VU'] as String?,
      UF_MARKA: json['UF_MARKA'] as String?,
      UF_MODEL: json['UF_MODEL'] as String?,
      MODEL_NAME: json['MODEL_NAME'] as String?,
      FILES: (json['FILES'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$AvtoItemModelToJson(AvtoItemModel instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'UF_NAME': instance.UF_NAME,
      'UF_TYPE': instance.UF_TYPE,
      'UF_NUMBER': instance.UF_NUMBER,
      'UF_YEAR': instance.UF_YEAR,
      'UF_STAJ': instance.UF_STAJ,
      'UF_NOMDER_VU': instance.UF_NOMDER_VU,
      'UF_MARKA': instance.UF_MARKA,
      'UF_MODEL': instance.UF_MODEL,
      'MODEL_NAME': instance.MODEL_NAME,
      'FILES': instance.FILES,
    };
