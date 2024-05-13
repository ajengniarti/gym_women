import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_gym/components/my_button.dart';
import 'package:app_gym/components/my_textfield.dart';
import 'package:flutter/widgets.dart';
import '../../resources/color_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterScreen extends StatefulWidget {
  final Widget? suffixIcon;
  final Function()? onTap;

  const RegisterScreen({
    Key? key,
    this.suffixIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final teleponController = TextEditingController();

  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try creating the user
    try {
      // cek jika password terkonfirmasi pada tabel auth
      if (passwordController.text == confirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        // add detail user
        addUserDetail(
          usernameController.text,
          teleponController.text,
        );
      } else {
        //show error message, password don't match
        showErrorMessage("Password don't match!");
      }
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      //show error message
      showErrorMessage(e.code);
    }
  }

  void addUserDetail(String username, String telepon) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'username': username,
        'telepon': telepon,
      });
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

  bool _isObscurePassword = true;
  bool _isObscureConfirmPassword = true;

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
                    SizedBox(height: height * 0.15),
                    Center(
                      child: Image(
                        image: const AssetImage('assets/images/logodp.png'),
                        width: MediaQuery.of(context).size.width * 0.70,
                      ),
                    ),

                    //Ucapan buat akun baru
                    SizedBox(height: height * 0.02),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Buat Baru Anda',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 93, 92, 92),
                        ),
                      ),
                    ),

                    //nama textfild
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                      prefixIcon: Icon(
                        Icons.person,
                        color: ColorManager.pinkL1,
                      ),
                    ),

                    //email textfild
                    MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                      prefixIcon: Icon(
                        Icons.email,
                        color: ColorManager.pinkL1,
                      ),
                    ),

                    //telefon textfild
                    MyTextField(
                      controller: teleponController,
                      hintText: 'Telepon',
                      obscureText: false,
                      prefixIcon: Icon(
                        Icons.call,
                        color: ColorManager.pinkL1,
                      ),
                    ),

                    //password textfild
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: _isObscurePassword,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorManager.pinkL1,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscurePassword = !_isObscurePassword;
                          });
                        },
                        icon: Icon(
                          _isObscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    //confirm password
                    MyTextField(
                      controller: confirmpasswordController,
                      hintText: 'Confirm Password',
                      obscureText: _isObscureConfirmPassword,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorManager.pinkL1,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscureConfirmPassword =
                                !_isObscureConfirmPassword;
                          });
                        },
                        icon: Icon(
                          _isObscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ButtonLogin(
                      onTap: signUserUp,
                      name: 'Daftar',
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 25),
                      child: Row(
                        children: [
                          const Text(
                            'Apakah sudah punya akun?',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: Text(
                              "Masuk",
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
