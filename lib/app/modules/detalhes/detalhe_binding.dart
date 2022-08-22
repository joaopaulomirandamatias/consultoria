import 'package:consultoria/app/modules/user/user_controller.dart';
import 'package:get/get.dart';

class DetalheBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
