import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
  //       theme: AppTheme.light,
  // darkTheme: AppTheme.dark,
  // themeMode: ThemeMode.system,
      // locale: context.watch<LocaleCubit>().state,
      // supportedLocales: AppLocalizations.supportedLocales,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      title: 'Flutter Demo',
      // home: const MyHomePage(),
      // routerConfig: ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [const Text('You have pushed the button this many times:')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
