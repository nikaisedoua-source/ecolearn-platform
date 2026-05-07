import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String learning = '/learning';
  static const String quiz = '/quiz';
  static const String chat = '/chat';
  static const String profile = '/profile';
  static const String settings = '/settings';
  
  static Map<String, WidgetBuilder> routes = {
    home: (context) => const Placeholder(),
    learning: (context) => const Placeholder(),
    quiz: (context) => const Placeholder(),
    chat: (context) => const Placeholder(),
    profile: (context) => const Placeholder(),
    settings: (context) => const Placeholder(),
  };
}
