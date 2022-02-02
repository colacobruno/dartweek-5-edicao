import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/splash/splash_page.dart';

class SplashRouters {
  SplashRouters._(); // Construtor privado - n vai ser instanciada

  static final routers = <GetPage>[
    GetPage(
      name: '/',
      page: () => const SplashPage(),
    )
  ];
}
