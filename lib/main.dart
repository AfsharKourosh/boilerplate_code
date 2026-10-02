import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await setupDependencies();
  runApp(
    MaterialApp.router(
      // theme: AppTheme.light,
      // darkTheme: AppTheme.dark,
      // themeMode: ThemeMode.system,
      // locale: context.watch<LocaleCubit>().state,
      // supportedLocales: AppLocalizations.supportedLocales,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // routerConfig: ,
    ),
  );
}
