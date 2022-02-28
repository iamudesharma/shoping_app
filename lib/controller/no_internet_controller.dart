import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NoInternetController extends GetxController {
  var checkInternet = RxnBool();

  @override
  void onInit() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        checkInternet = RxnBool(false);
      } else {
        checkInternet = RxnBool(true);
      }
    });
    super.onInit();
  }
}
