import 'package:json_annotation/json_annotation.dart';
import './slides_slider.dart';

part 'slider.g.dart';

@JsonSerializable()
class SliderModel {
  final List<SlidersSliderModel> slider;

  SliderModel({required this.slider});

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);

  Map<String, dynamic> toJson() => _$SliderModelToJson(this);
}
