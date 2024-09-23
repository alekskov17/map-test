import 'package:json_annotation/json_annotation.dart';

part 'marka_model.g.dart';

@JsonSerializable()
class MarkaModel {
  final String? id;
  final String? name;
  final String? product;

  MarkaModel({required this.id, required this.name, required this.product});

  factory MarkaModel.fromJson(Map<String, dynamic> json) =>
      _$MarkaModelFromJson(json);

  Map<String, dynamic> toJson() => _$MarkaModelToJson(this);
}
