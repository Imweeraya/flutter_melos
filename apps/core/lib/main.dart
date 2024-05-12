import 'package:core/dependency_injection/inject.dart';
import 'package:core/router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/main.dart';

void main() {
  registerServices();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.black,
          useMaterial3: true, 
          fontFamily: 'Ubuntu'
      ),
    );
  }
}