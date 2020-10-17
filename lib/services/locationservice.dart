import 'package:flutter/cupertino.dart';
import 'package:location/location.dart';

class LocationService extends ChangeNotifier {
  
  Location location = new Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  initailize() async {
    
    _serviceEnabled = await location.serviceEnabled();
    _permissionGranted = await location.hasPermission();

    this.setEnableService();
    this.setEnablePermission();

  }

  isEnableService() {
    
    return _serviceEnabled;

  }

  isEnablePermission() {
    
    if (_permissionGranted == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
    
  }

  setEnableService() async {
    
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();

      if (_serviceEnabled) {
        return;
      }
    }

  }

  setEnablePermission() async {

    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();

      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

  }

  Future<LocationData> getCurrentLocation() async {
    
    _locationData = await location.getLocation();
    
    return _locationData;
  }

}