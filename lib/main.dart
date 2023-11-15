import 'package:delivery_app/src/pages/login/login_page.dart';
import 'package:delivery_app/src/pages/register/register_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delivery App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage())
      ],
      theme: ThemeData(
        primaryColor: Colors.amber,
         colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.amber,
          onPrimary: Colors.grey,
          secondary: Colors.amberAccent,
          onSecondary: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
          background: Colors.grey, 
          onBackground: Colors.grey, 
          surface: Colors.grey, 
          onSurface: Colors.grey)
      ),
      navigatorKey: Get.key,
    );
  }
}