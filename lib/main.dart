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
      title: 'Consultoria',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute:
          GetPage(name: '/notfound', page: () => const NotFoundPage()),
      initialRoute: Routes.login,
      getPages: AppPages.routes,
    );
  }
}
