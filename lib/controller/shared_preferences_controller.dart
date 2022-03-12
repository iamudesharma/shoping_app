import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPerfController extends GetxController {
  late SharedPreferences prefs;
  late String userId;

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();

    super.onInit();
  }

  savedUserId(String id) async {
    await prefs.setString('userId', id);
  }

  String getUserId() {
    final data = prefs.getString('userId')!;
    return data;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
