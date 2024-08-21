import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:three_thousand/onboarding_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDateFormatting();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ReadyPage(),
    );
  }
}

class ReadyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboardingPage();
  }
}