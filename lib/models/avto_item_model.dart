import 'package:json_annotation/json_annotation.dart';

part 'avto_item_model.g.dart';

@JsonSerializable()
class AvtoItemModel {
  final String? ID;
  final String? UF_NAME;
  final String? UF_TYPE;
  final String? UF_NUMBER;
  final String? UF_YEAR;
  final String? UF_STAJ;
  final String? UF_NOMDER_VU;
  final String? UF_MARKA;
  final String? UF_MODEL;
  final String? MODEL_NAME;
  final List<Map<String, String>>? FILES;

  AvtoItemModel(
      {this.ID,
      this.UF_NAME,
      this.UF_TYPE,
      this.UF_NUMBER,
      this.UF_YEAR,
      this.UF_STAJ,
      this.UF_NOMDER_VU,
      this.UF_MARKA,
      this.UF_MODEL,
      this.MODEL_NAME,
      this.FILES});

  factory AvtoItemModel.fromJson(Map<String, dynamic> json) =>
      _$AvtoItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$AvtoItemModelToJson(this);
}
