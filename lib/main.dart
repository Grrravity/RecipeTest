import 'package:flutter/material.dart';

import 'features/pancake_app/views/screens/panecake_app.dart';
import 'injection_container.dart' as inj;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inj.init();
  runApp(PancakeApp());
}

class PancakeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          accentColor: Colors.white10,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: PancakeLanding()));
  }
}
