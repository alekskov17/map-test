// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripItemModel _$TripItemModelFromJson(Map<String, dynamic> json) =>
    TripItemModel(
      id: json['id'] as String?,
      user_photo: json['user_photo'] as String?,
      user_name: json['user_name'] as String?,
      user_id: json['user_id'] as String?,
      price: json['price'] as String?,
      currency: json['currency'] as String?,
      from: json['from'] as String?,
      from_full: json['from_full'] as String?,
      place_str: json['place_str'] as String?,
      places: json['places'] as String?,
      date_str: json['date_str'] as String?,
      time: json['time'] as String?,
      animal: json['animal'] as String?,
      comment: json['comment'] as String?,
      smoke: json['smoke'] as String?,
      auto_name: json['auto_name'] as String?,
      auto_src: json['auto_src'] as String?,
      views: json['views'] as String?,
      to: json['to'] as String?,
      to_full: json['to_full'] as String?,
      bag: json['bag'] as String?,
      from_to_date_str: json['from_to_date_str'] as String?,
      dop_price: json['dop_price'] as String?,
    );

Map<String, dynamic> _$TripItemModelToJson(TripItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_photo': instance.user_photo,
      'user_name': instance.user_name,
      'user_id': instance.user_id,
      'price': instance.price,
      'currency': instance.currency,
      'from': instance.from,
      'from_full': instance.from_full,
      'to': instance.to,
      'to_full': instance.to_full,
      'place_str': instance.place_str,
      'places': instance.places,
      'date_str': instance.date_str,
      'time': instance.time,
      'animal': instance.animal,
      'comment': instance.comment,
      'smoke': instance.smoke,
      'auto_name': instance.auto_name,
      'auto_src': instance.auto_src,
      'views': instance.views,
      'bag': instance.bag,
      'from_to_date_str': instance.from_to_date_str,
      'dop_price': instance.dop_price,
    };
