import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_project/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        return Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 230, 0),
              borderRadius: BorderRadius.circular(controller.radius.value),
            ),
            width: controller.size.value,
            height: controller.size.value,
            child: Center(
              child: AnimatedOpacity(
                opacity: controller.textObacity.value,
                duration: const Duration(milliseconds: 500),
                child: Text('Camp Yellow',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    )),
              ),
            ),
          ),
        );
      }),
    );
  }
}
