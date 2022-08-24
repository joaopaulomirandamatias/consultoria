import 'package:consultoria/app/data/model/user/user_model.dart';
import 'package:consultoria/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rx<UserModel> user = UserModel().obs;

  RxBool isLoading = false.obs;

  Future<void> login({required String email, required String password}) async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.inicial);
    isLoading.value = false;
  }

  void setUserName(String novoNome) {
    /*  user.update((val) {
      val?.nome = novoNome;
    }); */
    user.value.nome = novoNome;
    user.refresh();
  }

  void setUserIdade(int novaIdade) {
    /* user.update((val) {
      val?.idade = novaIdade;
    }); */
    user.value.idade = novaIdade;
    user.refresh();
  }
}
