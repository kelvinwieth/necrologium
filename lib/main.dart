import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:necrologium/navigation/navigation.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  tz.initializeTimeZones();
  Intl.defaultLocale = 'pt_BR';
  await initializeDateFormatting();
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
