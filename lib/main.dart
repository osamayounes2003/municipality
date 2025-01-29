import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:municipality/presentation/screens/sollam_daragat_al_aamal.dart';
import 'package:municipality/presentation/screens/tarmeez/tarmeez_beanat_al_baladea.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('ar', 'AE')],
      locale: Locale('ar'),
      home: SollamDaragatAlAamal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
