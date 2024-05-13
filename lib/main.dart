// import 'package:app_gym/screens/splash_screen.dart';
import 'package:app_gym/screens/my_app.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {

WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  // WidgetsFlutterBinding.ensureInitialized();
  // await initializeDateFormatting('id_ID');
  // await dotenv.load();

  runApp(const MyApp());
}