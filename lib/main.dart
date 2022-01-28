import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'data/db/database.dart';
import 'data/controllers/auth_controller.dart';
import 'data/controllers/bindings/app_bindings.dart';
import 'routes.dart';
import 'ui/screens/components/bottom_nav_main.dart';
import 'ui/screens/welcome_screen.dart';
import 'utils/size_config.dart';

void main() {
  Get.put<MelodyDB>(MelodyDB(), permanent: true);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Melody',
      getPages: AppRoutes.getPages,
      initialRoute: '/',
      initialBinding: AllBindings(),
    );
  }
}

class InitScreen extends GetWidget<AuthController> {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    if (!Get.context!.isTablet) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
    return GetX<AuthController>(builder: (auth) {
      if (auth.userInitialized.value) {
        return BottomNavMain();
      } else {
        return const WelcomeScreen();
      }
    });
  }
}
