import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/rest_client/rest_client.dart';

// tudo que será utilizado pela aplicaçao como um todo
// colocar no main.dart
class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient(),
        fenix: true); // fenix -> mantem ativo sempre
  }
}
