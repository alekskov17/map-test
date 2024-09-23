import 'package:json_annotation/json_annotation.dart';
import 'user_model.dart';

part 'user_req.g.dart';

@JsonSerializable()
class UserModelReq {
  final UserModel? user;

  UserModelReq({required this.user});

  factory UserModelReq.fromJson(Map<String, dynamic> json) =>
      _$UserModelReqFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelReqToJson(this);
}
