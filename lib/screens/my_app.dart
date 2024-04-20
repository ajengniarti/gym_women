import 'package:app_gym/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BumiBaik',
      home: SplashScreen(),
      // home: CarbonMenu(),
      // home: Calculate2(
      //   result: CarbonCalculationResultModel(unit: 'unit', result: 3.0),
      //   userModel: UserModel(
      //       id: 1,
      //       name: 'Derajat',
      //       email: 'darkbludevil@gmail.com',
      //       telp: '08887125515',
      //       birthDate: '28 agustus 2020',
      //       gender: 'laki - laki',
      //       address: ' aslkdjalsdjlsakj',
      //       photo: '',
      //       type: '',
      //       emailVerifiedAt: DateTime.now()),
      // ),
    );
  }
}