import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pancakeapp/core/utils/theme.dart';

import 'features/pancake_app/views/screens/panecake_app.dart';
import 'injection_container.dart' as inj;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inj.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(PancakeApp()));
}

class PancakeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: MyTheme.defaultTheme.copyWith(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: PancakeLanding()));
  }
}
