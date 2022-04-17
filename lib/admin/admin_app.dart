import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shoping_app/admin/controller/login_controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'routes/routes.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // Vx.setPathUrlStrategy();

//   Get.put(LoginController());
//   Get.put(() => AddProductController());

//   runApp(
//     const MyApp(),
//   );
// }

class MyAdminApp extends GetView<AdminLoginController> {
  const MyAdminApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      theme: ThemeData(),
      routerDelegate: vxNavigator,
      routeInformationParser: VxInformationParser(),
    );
  }
}
