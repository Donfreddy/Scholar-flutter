import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scholar/routes/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //only portrait
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scholar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: primaryColorMaterial,
      ),
      initialRoute: '/',
      onGenerateRoute: geneateRoute,
    );
  }
}
