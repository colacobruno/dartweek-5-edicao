import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_textformfield.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140E0E),
        child: Stack(children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: context.width, // tamanho todo da tea
              child: Image.asset(
                'assets/images/lanche.png',
                fit: BoxFit.cover, // preencher tudo, sem borda
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: context.heightTransformer(
                      reducedBy: 85), //espaçamento de 15% superior
                ),
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 60,
                ),
                VakinhaButton(
                    label: 'ACESSAR',
                    width: context.widthTransformer(
                        reducedBy: 40), // reduz 40% para ter 60%
                    height: 35,
                    onPressed: () {
                      Get.toNamed('/auth/login');
                    })
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
