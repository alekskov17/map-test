import 'package:flutter/material.dart';
import '../integrations/trip.dart';
import '../models/map_route_model.dart';
import 'package:yandex_maps_mapkit/mapkit_factory.dart';
import 'package:yandex_maps_mapkit/yandex_map.dart';
import 'package:yandex_maps_mapkit/mapkit.dart' as YMap;
import 'package:yandex_maps_mapkit/image.dart' as YImage;
import 'package:yandex_maps_mapkit/src/mapkit/map/text_style.dart'
    as YTextStyle;
import 'package:yandex_maps_mapkit/directions.dart';

final tripIntgr = TripIntegration();

class FullMap extends StatefulWidget {
  String id_trip;
  FullMap({super.key, required this.id_trip});

  @override
  State<FullMap> createState() => _FullMapState();
}

class _FullMapState extends State<FullMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map route"),
      ),
      body: FutureBuilder<MapRouteModel?>(
          future: tripIntgr.getRouteByTripId(widget.id_trip),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MapRoute(marRoteData: snapshot.data);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

class MapRoute extends StatefulWidget {
  MapRouteModel? marRoteData;
  MapRoute({super.key, required this.marRoteData});

  @override
  State<MapRoute> createState() => _MarRouteState();
}

YMap.PolylineMapObject? polylineObjectRoute;

class _MarRouteState extends State<MapRoute> {
  YMap.MapWindow? _mapWindow;

  List<YMap.RequestPoint> routePoints = [];
  final vehicleOptions = const DrivingVehicleOptions();
  final drivingRouter = DirectionsFactory.instance
      .createDrivingRouter(DrivingRouterType.Combined);
  final drivingOptions = const DrivingOptions(routesCount: 1);
  DrivingSession? drivingSession;
  DrivingSessionRouteListener? onDriverList;

  DrivingSessionRouteListener _initOnDriveRoute() {
    DrivingSessionRouteListener onDriverList = DrivingSessionRouteListener(
        onDrivingRoutes: (List<DrivingRoute> routes) {
      for (var rout in routes) {
        final polyne = YMap.Polyline(rout.geometry.points);
        if (polylineObjectRoute == null) {
          polylineObjectRoute =
              _mapWindow?.map.mapObjects.addPolylineWithGeometry(polyne);
          polylineObjectRoute
            ?..setStrokeColor(Colors.blue)
            ..strokeWidth = 6;
        } else {
          polylineObjectRoute?.geometry = polyne;
        }

        final geometry = YMap.Geometry.fromPolyline(polyne);
        final position = _mapWindow?.map.cameraPositionForGeometry(geometry);
        if (position != null) _mapWindow?.map.move(position);
      }
    }, onDrivingRoutesError: (error) {
      print(error.toString());
    });
    return onDriverList;
  }

  _setRouter() {
    if (widget.marRoteData?.from != null) {
      routePoints.clear();
      _mapWindow?.map.mapObjects.addPlacemark()
        ?..setText("От")
        ..setTextStyle(const YTextStyle.TextStyle(
            size: 8,
            placement: YMap.TextStylePlacement.Top,
            offset: -18,
            offsetFromIcon: true))
        ..geometry = YMap.Point(
            latitude: widget.marRoteData?.from.lat as double,
            longitude: widget.marRoteData?.from.lng as double)
        ..setIcon(YImage.ImageProvider.fromImageProvider(
            const AssetImage("assets/yandex_map_place.png")));

      final YMap.RequestPoint fromPoint = YMap.RequestPoint(
          YMap.Point(
              latitude: widget.marRoteData?.from.lat as double,
              longitude: widget.marRoteData?.from.lng as double),
          YMap.RequestPointType.Waypoint,
          null,
          null);
      routePoints.add(fromPoint);

      if (widget.marRoteData!.ft != null) {
        final YMap.RequestPoint ft = YMap.RequestPoint(
            YMap.Point(
                latitude: widget.marRoteData?.ft!.lat as double,
                longitude: widget.marRoteData?.ft!.lng as double),
            YMap.RequestPointType.Viapoint,
            null,
            null);
        routePoints.add(ft);
      }

      if (widget.marRoteData!.dops.isNotEmpty) {
        for (var el in widget.marRoteData!.dops) {
          final YMap.RequestPoint dop = YMap.RequestPoint(
              YMap.Point(
                  latitude: widget.marRoteData?.ft!.lat as double,
                  longitude: widget.marRoteData?.ft!.lng as double),
              YMap.RequestPointType.Viapoint,
              null,
              null);
          routePoints.add(dop);
        }
      }
      final YMap.RequestPoint toPoint = YMap.RequestPoint(
          YMap.Point(
              latitude: widget.marRoteData?.to.lat as double,
              longitude: widget.marRoteData?.to.lng as double),
          YMap.RequestPointType.Waypoint,
          null,
          null);
      routePoints.add(toPoint);

      _mapWindow?.map.mapObjects.addPlacemark()
        ?..setText("До")
        ..setTextStyle(const YTextStyle.TextStyle(
            size: 8,
            placement: YMap.TextStylePlacement.Top,
            offset: -18,
            offsetFromIcon: true))
        ..geometry = YMap.Point(
            latitude: widget.marRoteData?.to.lat as double,
            longitude: widget.marRoteData?.to.lng as double)
        ..setIcon(YImage.ImageProvider.fromImageProvider(
            const AssetImage("assets/yandex_map_place.png")));
      drivingSession = drivingRouter.requestRoutes(
        drivingOptions,
        vehicleOptions,
        onDriverList as DrivingSessionRouteListener,
        points: routePoints,
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onDriverList = _initOnDriveRoute();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // routePoints.clear();
    // drivingSession?.cancel();
    mapkit.onStop();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: YandexMap(
          scale: 4,
          onMapCreated: (mapWindow) {
            _mapWindow = mapWindow;
            mapkit.onStart();
            _setRouter();
          }),
    );
  }
}
