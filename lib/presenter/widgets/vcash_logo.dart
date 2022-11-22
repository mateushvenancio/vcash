import 'package:flutter/material.dart';

class VcashLogo extends StatelessWidget {
  final double? size;
  final Color? color;

  const VcashLogo({super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      'VCASH',
      style: TextStyle(
        fontSize: size ?? 14,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.black,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
