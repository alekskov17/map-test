import 'package:json_annotation/json_annotation.dart';
import '../models/trip_item_model.dart';

part 'trips_model.g.dart';

@JsonSerializable()
class TripsModel {
  final List<TripItemModel> trips;

  TripsModel({required this.trips});

  factory TripsModel.fromJson(Map<String, dynamic> json) =>
      _$TripsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TripsModelToJson(this);
}
