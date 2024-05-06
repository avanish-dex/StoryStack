import 'package:get/get.dart';
import 'package:storystack/pages/welcome_page.dart';

class SplaceController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    SplaceController();
  }

  void splaceController() {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(WelcomePage());
    });
  }
}
