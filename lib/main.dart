import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:presensi/screens/home_screen.dart';

void main() async {
  await initializeDateFormatting('id_ID', null);

  runApp(const PresentApp());
}

class PresentApp extends StatelessWidget {
  const PresentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Present',
      theme: ThemeData(
        primaryColor: const Color(0xFFE34F00),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFE34F00),
          secondary: const Color(0xFFFFEADF),
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
