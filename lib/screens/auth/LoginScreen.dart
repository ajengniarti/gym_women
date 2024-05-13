import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_gym/components/my_button.dart';
import 'package:app_gym/components/my_textfield.dart';
import 'package:app_gym/screens/auth/RegisterScreen.dart';
import 'package:app_gym/screens/main_buttomNavigasi.dart';
import 'package:app_gym/screens/menu/home_menu.dart';
import 'package:flutter/widgets.dart';
import '../../resources/color_manager.dart';

class LoginScreen extends StatefulWidget {
  final Widget? suffixIcon;
  final Function()? onTap;

  const LoginScreen({
    Key? key,
    this.suffixIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

  try {
      // Tunggu hasil sign in
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // pop the loading
      Navigator.pop(context);
    }
    on FirebaseAuthException catch (e) {
       // pop the loading circle
      Navigator.pop(context);
      //show error message
      showErrorMessage(e.code);
    }
  }

  //error message to user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey,
          title: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  bool _isObscure = true;

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
                          color: Color.fromARGB(255, 93, 92, 92),
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
                    MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                      prefixIcon: Icon(
                        Icons.email,
                        color: ColorManager.pinkL1,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: _isObscure,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorManager.pinkL1,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ButtonLogin(
                      onTap: signUserIn,
                      name: 'Masuk',
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 25),
                      child: Row(
                        children: [
                          const Text(
                            'Belum punya akun?',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: Text(
                              "Daftar",
                              style: TextStyle(
                                color: ColorManager.pinkL1,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
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
