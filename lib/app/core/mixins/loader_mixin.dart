import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin LoaderMixin on GetxController {
  void loaderListener(RxBool loading) {
    ever(loading, (_) async {
      if (loading.isTrue) {
        await Get.dialog(
          WillPopScope(
            onWillPop: () async =>
                false, // n deixar sair da tela caso o barrier nao funcione
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          barrierDismissible:
              false, // nao pode ser removido da tela (ex:clicar fora)
        );
      } else {
        Get.back(); // na versao 5 tem que usar o Get.close()
      }
    });
  }
}
