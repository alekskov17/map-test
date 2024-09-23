import 'package:json_annotation/json_annotation.dart';

part 'user_photo_model.g.dart';

@JsonSerializable()
class UserPhotoModel {
  final String fileID;
  final String fileURLSite;

  UserPhotoModel({required this.fileID, required this.fileURLSite});

  factory UserPhotoModel.fromJson(Map<String, dynamic> json) =>
      _$UserPhotoModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserPhotoModelToJson(this);
}
