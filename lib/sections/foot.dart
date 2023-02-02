import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Foot extends StatelessWidget {
  const Foot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: const Text(
        "copyright © Althierfson\nSite created with flutter web",
        textAlign: TextAlign.center,
      ),
    );
  }
}
