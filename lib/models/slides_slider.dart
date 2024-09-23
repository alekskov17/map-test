import 'package:json_annotation/json_annotation.dart';
import './slider_item.dart';

part 'slides_slider.g.dart';

@JsonSerializable()
class SlidersSliderModel {
  final String? name;
  final List<SliderItemModel> items;

  SlidersSliderModel({required this.name, required this.items});

  factory SlidersSliderModel.fromJson(Map<String, dynamic> json) =>
      _$SlidersSliderModelFromJson(json);

  Map<String, dynamic> toJson() => _$SlidersSliderModelToJson(this);
}
