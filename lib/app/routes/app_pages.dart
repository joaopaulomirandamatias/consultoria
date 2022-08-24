import 'package:get/get.dart';

import 'package:consultoria/app/modules/auth/sign_in_screen.dart';
import 'package:consultoria/app/modules/detalhes/detalhe_binding.dart';
import 'package:consultoria/app/modules/detalhes/detalhes_page.dart';
import 'package:consultoria/app/modules/not_found/not_found_page.dart';
import 'package:consultoria/app/modules/perfil/perfil_page.dart';

import '../modules/home/home_page.dart';

part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const SignInScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(seconds: 2),
      title: Routes.detalhes,
      binding: DetalheBinding(),
    ),
    GetPage(
      name: Routes.inicial,
      page: () => MyHomePage(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(seconds: 2),
      title: Routes.detalhes,
      binding: DetalheBinding(),
    ),
    GetPage(
      name: Routes.detalhes,
      page: () => const DetalhesPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 4),
      binding: DetalheBinding(),
    ),
    GetPage(
      name: Routes.perfil,
      page: () => const PerfilPage(),
    ),
    GetPage(name: Routes.notFound, page: () => const NotFoundPage()),
  ];
}
