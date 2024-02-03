import 'package:flutter/material.dart';
import 'package:necrologium/navigation/ne_routes.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';

void main() {
  runApp(
    const NecrologiumApp(),
  );
}

class NecrologiumApp extends StatelessWidget {
  const NecrologiumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Navigation.router,
      themeMode: ThemeMode.dark,
      theme: ThemeData(fontFamily: 'Karla'),
      darkTheme: ThemeData(fontFamily: 'Karla').copyWith(
        colorScheme: NeColorSchemes.darkScheme,
      ),
    );
  }
}
