import 'package:json_annotation/json_annotation.dart';

part 'slider_item.g.dart';

@JsonSerializable()
class SliderItemModel {

  final String? name;
  final String? src;

  SliderItemModel({required this.name, required this.src});

  factory SliderItemModel.fromJson(Map<String, dynamic> json) =>
      _$SliderItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$SliderItemModelToJson(this);
}
