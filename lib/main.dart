import 'package:consultoria/app/modules/contador/contador_controller.dart';
import 'package:consultoria/app/modules/not_found/not_found_page.dart';
import 'package:consultoria/app/modules/user/user_controller.dart';
import 'package:consultoria/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put<UserController>(UserController());
  Get.lazyPut<ContadorController>(() => ContadorController());

  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute:
          GetPage(name: '/notfound', page: () => const NotFoundPage()),
      initialRoute: Routes.INICIAL,
      getPages: AppPages.routes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final contadorController = ContadorController();
  final userController = Get.find<UserController>();

  final textController = TextEditingController();
  final corController = TextEditingController();
  final nomeController = TextEditingController();
  final idadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Injeção de Dependência"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(() => Text(
                  'NOME: ${userController.user.value.nome.toUpperCase()} IDADE: ${userController.user.value.idade}')),
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  hintText: 'Digite um nome',
                ),
              ),
              TextField(
                controller: idadeController,
                decoration: const InputDecoration(
                  hintText: 'Digite uma idade',
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text("Salvar"),
                    onPressed: () {
                      userController.setUserName(nomeController.text);
                      userController
                          .setUserIdade(int.parse(idadeController.text));
                    },
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  ElevatedButton(
                    child: const Text("Page 2"),
                    onPressed: () async {
                      Get.toNamed(Routes.DETALHES);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
