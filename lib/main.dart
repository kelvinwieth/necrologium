import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:necrologium/navigation/navigation.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:necrologium/shared/ui/styles/ne_themes.dart';

void main() async {
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
    return ValueListenableBuilder(
      valueListenable: NeThemes.themeModeProvider,
      builder: (_, mode, __) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: Navigation.router,
          themeMode: mode,
          theme: ThemeData(fontFamily: 'Karla').copyWith(
            colorScheme: NeColorSchemes.light,
          ),
          darkTheme: ThemeData(fontFamily: 'Karla').copyWith(
            colorScheme: NeColorSchemes.darkScheme,
          ),
        );
      },
    );
  }
}
