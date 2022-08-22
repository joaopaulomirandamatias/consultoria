import 'package:consultoria/app/modules/detalhes/detalhe_binding.dart';
import 'package:consultoria/app/modules/detalhes/detalhes_page.dart';
import 'package:consultoria/app/modules/not_found/not_found_page.dart';
import 'package:consultoria/app/modules/perfil/perfil_page.dart';
import 'package:consultoria/main.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INICIAL,
      page: () => MyHomePage(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(seconds: 2),
      title: Routes.DETALHES,
      binding: DetalheBinding(),
    ),
    GetPage(
      name: Routes.DETALHES,
      page: () => const DetalhesPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 4),
      binding: DetalheBinding(),
    ),
    GetPage(
      name: Routes.PERFIL,
      page: () => const PerfilPage(),
    ),
    GetPage(name: Routes.NOTFOUND, page: () => const NotFoundPage()),
  ];
}
