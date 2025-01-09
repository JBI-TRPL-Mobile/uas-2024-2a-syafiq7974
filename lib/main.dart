import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // Inisialisasi kontroler
  Get.put(AuthController());
  Get.put(MessageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Menggunakan GetMaterialApp untuk routing
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Learnout App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
