import 'package:json_annotation/json_annotation.dart';

part 'res_data.g.dart';

@JsonSerializable()
class ResData {
  final String? ok;
  final String? error;
  final String? msg;

  ResData({required this.ok, this.msg, this.error});

  factory ResData.fromJson(Map<String, dynamic> json) =>
      _$ResDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResDataToJson(this);
}
