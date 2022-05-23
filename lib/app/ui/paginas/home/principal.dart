import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      bool bToggle = true;
      _markers.add(
        Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(13.700732, -89.224066),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                (bToggle) ? BitmapDescriptor.hueCyan : BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'MovilSV, Salvador del Mundo',
            )),
      );
      _markers.add(
        Marker(
            markerId: MarkerId('id-2'),
            position: LatLng(13.699722, -89.197406),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'MovilSV,Calle Arce',
            )),
      );
      _markers.add(
        Marker(
            markerId: MarkerId('id-3'),
            position: LatLng(13.716006, -89.142591),
            icon: BitmapDescriptor.defaultMarkerWithHue((bToggle)
                ? BitmapDescriptor.hueGreen
                : BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'MovilSV,Soyapango',
            )),
      );
      _markers.add(
        Marker(
            markerId: MarkerId('id-4'),
            position: LatLng(13.685338, -89.189754),
            icon: BitmapDescriptor.defaultMarkerWithHue((bToggle)
                ? BitmapDescriptor.hueOrange
                : BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'MovilSV,San Jacinto',
            )),
      );
    });
  }

  final _initialCameraPosition = CameraPosition(
      target: LatLng(13.701687465625996, -89.22383988311188), zoom: 11);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4° Parcial'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
