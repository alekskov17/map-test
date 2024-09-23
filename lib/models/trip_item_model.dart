import 'package:json_annotation/json_annotation.dart';

part 'trip_item_model.g.dart';

@JsonSerializable()
class TripItemModel {
  final String? id;
  final String? user_photo;
  final String? user_name;
  final String? user_id;
  final String? price;
  final String? currency;
  final String? from;
  final String? from_full;
  final String? to;
  final String? to_full;
  final String? place_str;
  final String? places;
  final String? date_str;
  final String? time;
  final String? animal;
  final String? comment;
  final String? smoke;
  final String? auto_name;
  final String? auto_src;
  final String? views;
  final String? bag;
  final String? from_to_date_str;
  final String? dop_price;

  TripItemModel(
      {this.id,
      this.user_photo,
      this.user_name,
      this.user_id,
      this.price,
      this.currency,
      this.from,
      this.from_full,
      this.place_str,
      this.places,
      this.date_str,
      this.time,
      this.animal,
      this.comment,
      this.smoke,
      this.auto_name,
      this.auto_src,
      this.views,
      this.to,
      this.to_full,
      this.bag,
      this.from_to_date_str,
      this.dop_price});

  factory TripItemModel.fromJson(Map<String, dynamic> json) =>
      _$TripItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$TripItemModelToJson(this);
}
