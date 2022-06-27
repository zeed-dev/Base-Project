import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(
    String routeName, {
    Object? arguments,
    bool withReplacement = false,
  }) {
    if (withReplacement) {
      return navigatorKey.currentState!.pushNamedAndRemoveUntil(
        routeName,
        (route) => false,
        arguments: arguments,
      );
    } else {
      return navigatorKey.currentState!.pushNamed(
        routeName,
        arguments: arguments,
      );
    }
  }

  bool pop({required String routeName, Object? arguments}) {
    navigatorKey.currentState!.pop();
    return true;
  }
}
