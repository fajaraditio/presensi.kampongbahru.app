import 'package:flutter/material.dart';
import 'package:presensi/screens/login_screen.dart';
import 'package:presensi/screens/home_screen.dart';
import 'package:presensi/services/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final loginData = await StorageService.getLoginData();
  final bool isRemembered = loginData['rememberMe'] ?? false;

  runApp(MyApp(isLoggedIn: isRemembered));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presensi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE34F00), // Primary
          primary: const Color(0xFFE34F00),
          secondary: const Color(0xFFFFEADF),
        ),
      ),
      home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
    );
  }
}
