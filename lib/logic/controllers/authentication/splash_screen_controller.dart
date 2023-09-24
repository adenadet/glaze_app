import 'package:get/get.dart';

import 'package:glaze_credit_app/ui/screens/welcome.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animated = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animated.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(WelcomeScreen());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
