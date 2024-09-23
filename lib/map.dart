import 'package:flutter/material.dart';
import 'package:yandex_maps_mapkit/mapkit.dart' as YMap;
import 'package:yandex_maps_mapkit/yandex_map.dart';
import 'package:yandex_maps_mapkit/mapkit_factory.dart';

class MapW extends StatefulWidget {
  const MapW({super.key});

  @override
  State<MapW> createState() => _MapWState();
}

class _MapWState extends State<MapW> {
  YMap.MapWindow? _mapWindow;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mapkit.onStop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Map"),
        ),
        body: YandexMap(
            scale: 4,
            onMapCreated: (mapWindow) {
              _mapWindow = mapWindow;
              mapkit.onStart();
            }));
  }
}
