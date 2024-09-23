// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResData _$ResDataFromJson(Map<String, dynamic> json) => ResData(
      ok: json['ok'] as String?,
      msg: json['msg'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ResDataToJson(ResData instance) => <String, dynamic>{
      'ok': instance.ok,
      'error': instance.error,
      'msg': instance.msg,
    };
