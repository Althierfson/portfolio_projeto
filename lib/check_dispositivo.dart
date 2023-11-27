import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CheckDispositivo {
  static late bool isMobile;

  CheckDispositivo(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      if (MediaQueryData.fromView(
                  View.of(context).platformDispatcher.views.single)
              .size
              .shortestSide <
          600) {
        isMobile = true;
      } else {
        isMobile = false;
      }
    } else {
      if (MediaQuery.of(context).size.shortestSide < 600) {
        isMobile = true;
      } else {
        isMobile = false;
      }
    }
  }
}
