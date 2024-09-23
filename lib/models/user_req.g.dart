// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelReq _$UserModelReqFromJson(Map<String, dynamic> json) => UserModelReq(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelReqToJson(UserModelReq instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
