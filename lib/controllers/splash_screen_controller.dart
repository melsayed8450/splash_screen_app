import 'package:get/get.dart';
import 'package:splash_screen_project/pages/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 2000), () {
      radius.value = 5;
      size.value = 1000;
      textObacity.value = 0;
      Future.delayed(const Duration(milliseconds: 500), () {
        Get.to(
          const LoginScreen(),
          transition: Transition.upToDown,
          duration: const Duration(seconds: 2)
        );
      });
    });
  }

  final radius = 120.0.obs;
  final size = 240.0.obs;
  final textObacity = 1.0.obs;
}
