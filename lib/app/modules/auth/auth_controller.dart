import 'package:consultoria/app/data/model/user/user_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rx<UserModel> user = UserModel().obs;

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
