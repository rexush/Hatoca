import 'package:flutter/material.dart';
import 'dart:async';
import 'package:hatoca/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menggunakan Future.delayed untuk menambahkan durasi layar pembuka
    Timer(
      Duration(seconds: 3), // Ganti dengan durasi yang Anda inginkan
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()), // Ganti dengan layar utama Anda
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('asset/splash.jpg'), // Ganti dengan path ke gambar Anda
      ),
    );
  }
}
