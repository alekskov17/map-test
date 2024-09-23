import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: "TITLE")
  final String? title;

  @JsonKey(name: "LOGIN")
  final String? login;

  @JsonKey(name: "NAME")
  final String? name;

  @JsonKey(name: "LAST_NAME")
  final String? lastName;

  @JsonKey(name: "SHORT_NAME")
  final String? shortName;

  @JsonKey(name: "PERSONAL_PHOTO_SRC_HOST")
  final String photoSrc;

  @JsonKey(name: "PERSONAL_STREET")
  final String? street;

  @JsonKey(name: "PERSONAL_GENDER")
  final String? gender;

  @JsonKey(name: "PERSONAL_BIRTHDAY")
  final DateTime? birthday;

  @JsonKey(name: "PERSONAL_PHONE")
  final String? phone;

  @JsonKey(name: "EMAIL")
  final String? email;

  @JsonKey(name: "WORK_NOTES")
  final String? notes;

  @JsonKey(name: "PERSONAL_NOTES")
  final String? familyStatus;

  @JsonKey(name: "PERM")
  final Map<String, String>? perm;

  UserModel(
      {required this.title,
      required this.login,
      required this.name,
      required this.lastName,
      required this.street,
      required this.shortName,
      required this.photoSrc,
      required this.gender,
      required this.birthday,
      required this.email,
      required this.familyStatus,
      required this.notes,
      required this.phone,
      required this.perm});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
