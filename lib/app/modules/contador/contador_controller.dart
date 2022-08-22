import 'package:get/get.dart';

class ContadorController extends GetxController {
  RxInt contador = 0.obs;
  RxString nome = ''.obs;

  String defineValor = '';



  void setIncrement() {
    contador.value++;
  }

  void setValue(String novoValor) {
    defineValor = novoValor;
    update();
  }

  void setCor(String novaCor){
    nome.value = novaCor;
  }
}
