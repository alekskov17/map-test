import 'dart:convert';
import '../models/map_route_model.dart';
import '../models/trips_model.dart';

import '../integrations/login.dart';
import 'package:http/http.dart' as http;

class TripIntegration extends Login {
  Future<Map<String, dynamic>> addTrip(Map<String, dynamic> trip) async {
    final response = await http.post(
      Uri.parse(getUrl('addTrip')),
      headers: await getHeaders(),
      body: jsonEncode(trip),
    );
    if (response.statusCode == 200) {
      final res = jsonDecode(response.body.toString());
      if (res != null) {
        return res;
      }
    } else {
      return {"error": 'Нет ответа'};
    }
    return {"error": 'Нет ответа'};
  }

  Future<TripsModel> searchTrip(Map<String, dynamic> paramsSearch) async {
    final response = await http.post(
      Uri.parse(getUrl('searchTrip')),
      headers: await getHeaders(),
      body: jsonEncode(paramsSearch),
    );
    if (response.statusCode == 200) {
      final res = TripsModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      return res;
    } else {
      return TripsModel(trips: []);
    }
    return TripsModel(trips: []);
  }

  Future<MapRouteModel?> getRouteByTripId(String idTrip) async {
    final response = await http.post(
        Uri.parse("${getUrl('getCoordinatByTript')}&id_trip=$idTrip"),
        headers: await getHeaders());
    if (response.statusCode == 200) {
      final res = MapRouteModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      return res;
    } else {
      return null;
    }
  }
}
