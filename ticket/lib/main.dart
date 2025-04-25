import 'package:flutter/material.dart';
import 'package:ticket/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes().goRouter,
      theme: ThemeData.dark(),
    );
  }
}
