import 'package:get/get.dart';
import 'package:location/location.dart';

import '../model/users/geo.dart';

class LocationController extends GetxController {
  Rxn<Geo> geo = Rxn<Geo>();

  late Location location;

  init() async {
    var serviceEnabled = await location.serviceEnabled();

    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    var hasPermission = await location.hasPermission();
    if (hasPermission == PermissionStatus.denied) {
      hasPermission = await location.requestPermission();
      if (hasPermission != PermissionStatus.granted) {
        return;
      }
    }
  }

  currentLocation() async {
    var _currentLocation = await location.getLocation();

    if (_currentLocation != null) {
      geo.value = Geo(
        lat: _currentLocation.latitude!,
        lng: _currentLocation.longitude!,
      );
    }
  }

  @override
  void onInit() {
    location = Location();

    init();

    super.onInit();
  }
}
