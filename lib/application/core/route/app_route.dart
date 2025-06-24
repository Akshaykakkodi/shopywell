import 'package:flutter/material.dart';
import 'package:shopywell/application/core/constants/app_constants.dart';

class AppRouter {
  static Future<T?> pushScreen<T>(Widget screen) {
    return AppConstants.navigatorKey.currentState!.push<T>(
      MaterialPageRoute<T>(builder: (_) => screen),
    );
  }

  static Future<T?> pushReplacementScreen<T, TO>(Widget screen, {TO? result}) {
    return AppConstants.navigatorKey.currentState!.pushReplacement<T, TO>(
      MaterialPageRoute<T>(builder: (_) => screen),
      result: result,
    );
  }

  static Future<T?> pushAndRemoveUntilScreen<T>(
    Widget screen, {
    bool Function(Route<dynamic>)? predicate,
  }) {
    return AppConstants.navigatorKey.currentState!.pushAndRemoveUntil<T>(
      MaterialPageRoute<T>(builder: (_) => screen),
      predicate ?? (_) => false, // Removes all by default
    );
  }

  static void pop<T extends Object?>([T? result]) {
    AppConstants.navigatorKey.currentState!.pop<T>(result);
  }
}
