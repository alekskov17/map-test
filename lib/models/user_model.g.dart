// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      title: json['TITLE'] as String?,
      login: json['LOGIN'] as String?,
      name: json['NAME'] as String?,
      lastName: json['LAST_NAME'] as String?,
      street: json['PERSONAL_STREET'] as String?,
      shortName: json['SHORT_NAME'] as String?,
      photoSrc: json['PERSONAL_PHOTO_SRC_HOST'] as String,
      gender: json['PERSONAL_GENDER'] as String?,
      birthday: json['PERSONAL_BIRTHDAY'] == null
          ? null
          : DateTime.parse(json['PERSONAL_BIRTHDAY'] as String),
      email: json['EMAIL'] as String?,
      familyStatus: json['PERSONAL_NOTES'] as String?,
      notes: json['WORK_NOTES'] as String?,
      phone: json['PERSONAL_PHONE'] as String?,
      perm: (json['PERM'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'TITLE': instance.title,
      'LOGIN': instance.login,
      'NAME': instance.name,
      'LAST_NAME': instance.lastName,
      'SHORT_NAME': instance.shortName,
      'PERSONAL_PHOTO_SRC_HOST': instance.photoSrc,
      'PERSONAL_STREET': instance.street,
      'PERSONAL_GENDER': instance.gender,
      'PERSONAL_BIRTHDAY': instance.birthday?.toIso8601String(),
      'PERSONAL_PHONE': instance.phone,
      'EMAIL': instance.email,
      'WORK_NOTES': instance.notes,
      'PERSONAL_NOTES': instance.familyStatus,
      'PERM': instance.perm,
    };
