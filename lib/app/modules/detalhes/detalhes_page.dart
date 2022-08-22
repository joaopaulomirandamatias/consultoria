import 'package:flutter/material.dart';
import 'package:consultoria/app/modules/user/user_controller.dart';
import 'package:get/get.dart';

class DetalhesPage extends GetView<UserController> {
  const DetalhesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.arguments);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                'NOME: ${controller.user.value.nome.toUpperCase()} IDADE: ${controller.user.value.idade}')),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Perfil"),
              onPressed: () {
                //Navigator.pop(context);
                Get.back();
                //Get.offAllNamed(Routes.PERFIL);
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("Voltar"),
              onPressed: () {
                //Navigator.pop(context);
                Get.back(result: 'sucesso');
              },
            ),
          ],
        ),
      ),
    );
  }
}
