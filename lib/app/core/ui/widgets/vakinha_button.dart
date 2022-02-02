import 'package:flutter/material.dart';

class VakinhaButton extends StatelessWidget {
  final VoidCallback? onPressed; // função qdo for clicado
  final String label;
  final double? width;
  final double height;
  final Color? color;

  const VakinhaButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height = 50,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //vai definir a altura e largura do botão
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(), //deixa ele arredondado
              primary: color)),
    );
  }
}
