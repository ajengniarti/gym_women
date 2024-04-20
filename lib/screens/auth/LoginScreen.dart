import 'package:app_gym/screens/auth/RegisterScreen.dart';
import 'package:app_gym/screens/main_buttomNavigasi.dart';
import 'package:app_gym/screens/menu/home_menu.dart';
import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.17),
                    Center(
                      child: Image(
                        image: const AssetImage('assets/images/logodp.png'),
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    SizedBox(height: height * 0.045),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        'Masuk',
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: ColorManager.pinkL1,
                          ),
                          border: const OutlineInputBorder(),
                          hintText: 'Email',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorManager.pinkL1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: ColorManager.pinkL1,
                          ),
                          border: const OutlineInputBorder(),
                          hintText: 'Password',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorManager.pinkL1,
                            ),
                          ),
                          // suffixIcon: IconButton(
                          //   icon: Icon(
                          //     _isObscure
                          //         ? Icons.visibility_off
                          //         : Icons.visibility,
                          //     color: _isObscure
                          //         ? Colors.grey
                          //         : ColorManager.primary,
                          //   ),
                          //   onPressed: () {
                          //     setState(
                          //       () {
                          //         _isObscure = !_isObscure;
                          //       },
                          //     );
                          //   },
                          //   splashRadius: 1.0,
                          // ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorManager.pinkL1, // background
                          foregroundColor: Colors.white, // foreground
                        ),
                        child: const Text('MASUK'),
                        onPressed: () async {
                          Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const ButtomNavigasiHome(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          const Text('Belum punya akun?'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  ));
                            },
                            child: Text(
                              "Daftar",
                              style: TextStyle(color: ColorManager.pinkL1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
