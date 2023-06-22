import 'package:flutter/material.dart';
import 'Tools.dart';
import 'package:project/Home.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class MapScreen extends StatefulWidget {
  final double mapLat;
  final double mapLng;
  const MapScreen(this.mapLat, this.mapLng);
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late double mapLat;
  late double mapLng;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    requestLocationPermission();
    mapLat = widget.mapLat;
    mapLng = widget.mapLng;
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Toolspage();
          }),
        );
      } else if (_selectedIndex == 1) {
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Home();
          }),
        );
      }
    });
  }

  Future<void> requestLocationPermission() async {
    final status = await Permission.location.request();
  }

  CameraPosition _UserPOsition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(12.5492, 40.4989),
      tilt: 59.440717697143555,
      zoom: 11.151926040649414);

  final Marker _GoogleMarker = Marker(
    markerId: MarkerId("_GoogleMarker"),
    infoWindow: InfoWindow(title: "information"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(12.0333, 39.0333),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _goToUser,
        child: Icon(Icons.gps_fixed),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: {_GoogleMarker},
        initialCameraPosition: CameraPosition(
          target: LatLng(mapLat, mapLng),
          zoom: 10.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_rounded),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pan_tool),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF6750a4),
        onTap: _onItemTapped,
      ),
    );
  }

  Future<void> _goToUser() async {
    final GoogleMapController controller = await _controller.future;
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(_UserPOsition));
  }
}
