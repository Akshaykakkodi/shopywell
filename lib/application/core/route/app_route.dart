import 'package:flutter/material.dart';
import 'package:shopywell/application/core/constants/app_constants.dart';

class AppRouter {
  static Route<T> _buildPageRoute<T>(Widget screen) {
    return PageRouteBuilder<T>(
      pageBuilder: (_, __, ___) => screen,
      transitionsBuilder: (_, animation, __, child) {
       const begin = Offset(1.0, 0.0); // Right to left
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Future<T?> pushScreen<T>(Widget screen) {
    return AppConstants.navigatorKey.currentState!.push<T>(
      _buildPageRoute(screen),
    );
  }

  static Future<T?> pushReplacementScreen<T, TO>(Widget screen, {TO? result}) {
    return AppConstants.navigatorKey.currentState!.pushReplacement<T, TO>(
      _buildPageRoute(screen),
      result: result,
    );
  }

  static Future<T?> pushAndRemoveUntilScreen<T>(
    Widget screen, {
    bool Function(Route<dynamic>)? predicate,
  }) {
    return AppConstants.navigatorKey.currentState!.pushAndRemoveUntil<T>(
      _buildPageRoute(screen),
      predicate ?? (_) => false,
    );
  }

  static void pop<T extends Object?>([T? result]) {
    AppConstants.navigatorKey.currentState!.pop<T>(result);
  }
}
