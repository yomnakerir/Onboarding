import'package:flutter/material.dart';
import 'package:onboarding/modules/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onboarding/modules/choosepage.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showChoose = prefs.getBool('showChoose') ?? false;

  return runApp(MyApp(showChoose: showChoose));
}

class MyApp extends StatelessWidget{
  final bool showChoose;
  const MyApp ({
    Key ? key,
    required this.showChoose,
}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }

}