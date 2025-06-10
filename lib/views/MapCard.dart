import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapcard extends StatefulWidget {
  const Mapcard({super.key});

  @override
  State<Mapcard> createState() => _MapcardState();
}

class _MapcardState extends State<Mapcard> {

  void initState() {
    super.initState();

    //un delai pour naviger directement sur une autre page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
         MaterialPageRoute(builder: (context) => Mapcard())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(6.1319, 1.2228),
          minZoom: 5,
          maxZoom: 20,
        ),

        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.map',
          ),

          MarkerLayer(
              markers: [
                Marker(
                    point: LatLng(6.1319, 1.2228),
                    width: 50,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.location_pin,
                      color: Colors.red,
                      size: 50,)
                )
              ]
          )
        ],
      ),
    );;
  }
}

