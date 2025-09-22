import 'package:flutter/material.dart';
import 'package:tumblrr_app/data/products_data.dart';
import 'package:tumblrr_app/models/products_model.dart';
import 'package:tumblrr_app/utils/consts.dart';
import 'package:tumblrr_app/views/auth/login_screen.dart';
import 'package:tumblrr_app/views/auth/register_screen.dart';
import 'package:tumblrr_app/views/details/detail_screen.dart';
import 'package:tumblrr_app/views/home/catalogue_screen.dart';
import 'package:tumblrr_app/views/onboarding_screen.dart';

void main() {
  runApp(OwalaApp());
}

class OwalaApp extends StatefulWidget {
  const OwalaApp({super.key});

  @override
  State<OwalaApp> createState() => _OwalaAppState();
}

class _OwalaAppState extends State<OwalaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Owala App",
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor)
        ), // mengatur kepadatan di setiap 
        scaffoldBackgroundColor: Colors.white,
      ),
      // untuk mendefinisikan class apa yang akan tampil pertama kali saat aplikasi di jalankan
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/catalogue': (context) => CatalogueScreen(),
        '/detail': (context) => DetailScreen(
          // ModalRoute adalah class yang wajib di panggil ketika melakukan navigasi membawa data
          product: ModalRoute.of(context)!.settings.arguments as ProductsModel,
        ),
      },
    );
  }
}