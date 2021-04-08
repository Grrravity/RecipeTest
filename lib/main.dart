import 'package:flutter/material.dart';

import 'features/pancake_app/views/screens/landing/panecake_app.dart';
import 'injection_container.dart' as inj;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inj.init();
  runApp(BoApp());
}

class BoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Number Trivia',
        theme: ThemeData(
          primaryColor: Colors.green.shade800,
          accentColor: Colors.green.shade600,
        ),
        home: PancakeLanding());
  }
}
