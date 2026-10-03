import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await setupDependencies();
  runApp(
    CupertinoApp.router(
      // debugShowCheckedModeBanner: kDebugMode,
      // scrollBehavior:CupertinoScrollBehavior() ,
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
