import 'package:ecommerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   DefaultFirebaseOptions.currentPlatform(),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple, // Set your desired primary color
        ),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
