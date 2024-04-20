import 'package:app_gym/resources/color_manager.dart';
import 'package:app_gym/screens/auth/LoginScreen.dart';
import 'package:app_gym/screens/main_buttomNavigasi.dart';
import 'package:app_gym/screens/menu/home_menu.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                child: Stack(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.1,
                      left: MediaQuery.of(context).size.width * 0.6,
                      child: Image(
                        image: const AssetImage('assets/images/icon.png'),
                        width: MediaQuery.of(context).size.width * 0.25,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.17),
                        SizedBox(height: height * 0.045),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            'Buat Akun Baru',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            // controller: nameController,
                            // validator: _nameValidator,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: ColorManager.pinkL1,
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'Nama',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ColorManager.pinkL1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //     margin: const EdgeInsets.all(12),
                        //     padding: const EdgeInsets.all(10),
                        //     decoration: BoxDecoration(
                        //       // borderRadius: BorderRadius.circular(15.0),
                        //       border: Border.all(
                        //           color: Colors.black,
                        //           style: BorderStyle.solid,
                        //           width: 0.70),
                        //     ),
                        // decoration: BoxDecoration(
                        // ),
                        // child: DropdownButton<String?>(
                        //   hint: const Text('Gender'),
                        //   value: selectedValue,
                        //   onChanged: (value) {
                        //     setState(() {
                        //       selectedValue = value ?? "";
                        //     });
                        //   },
                        //   underline: const SizedBox(),
                        //   isExpanded: true,
                        //   items: gender
                        //       .map<DropdownMenuItem<String?>>(
                        //         (e) => DropdownMenuItem(
                        //           child: Text(
                        //             e.toString(),
                        //           ),
                        //           value: e,
                        //         ),
                        //       )
                        //       .toList(),
                        // )
                        // print();),
                        // ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            // controller: emailController,
                            // validator: _emailValidator,
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
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            // controller: phoneController,
                            // validator: _phoneValidator,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone,
                                color: ColorManager.pinkL1,
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'Telepon',
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
                            // controller: passwordController,
                            // validator: _passwordValidator,
                            keyboardType: TextInputType.text,
                            // obscureText: _isObscure,
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
                              //     // _isObscure
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
                              // splashRadius: 1.0,
                            ),
                          ),
                        ),
                        // ),
                        const SizedBox(
                          height: 5,
                        ),
                        // Container(
                        //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        //   child: TextFormField(
                        //     controller: confirmPasswordController,
                        //     validator: (val) => MatchValidator(
                        //             errorText: "Konfirmasi password tidak sama")
                        //         .validateMatch(val!, passwordController.text),
                        //     keyboardType: TextInputType.text,
                        //     obscureText: _isObscure,
                        //     decoration: InputDecoration(
                        //       prefixIcon: Icon(
                        //         Icons.lock,
                        //         color: ColorManager.primary,
                        //       ),
                        //       border: const OutlineInputBorder(),
                        //       hintText: 'Konfirmasi Password',
                        //       focusedBorder: OutlineInputBorder(
                        //         borderSide: BorderSide(
                        //           color: ColorManager.primary,
                        //         ),
                        //       ),
                        //       suffixIcon: IconButton(
                        //         icon: Icon(
                        //           _isObscure
                        //               ? Icons.visibility_off
                        //               : Icons.visibility,
                        //           color: _isObscure
                        //               ? Colors.grey
                        //               : ColorManager.primary,
                        //         ),
                        //         onPressed: () {
                        //           setState(
                        //             () {
                        //               _isObscure = !_isObscure;
                        //             },
                        //           );
                        //         },
                        //         splashRadius: 1.0,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(height: 4),
                        // Container(
                        //   margin: const EdgeInsets.all(12),
                        //   // padding: const EdgeInsets.all(10),
                        //   height: 50,
                        //   width: double.infinity,
                        //   // alignment: Alignment.topLeft,
                        //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        //   //  padding: const EdgeInsets.all(10)
                        //   decoration: BoxDecoration(
                        //     border: Border.all(
                        //       color: Colors.black,
                        //       style: BorderStyle.solid,
                        //       width: 0.70,
                        //     ),
                        //   ),
                        //   child: MaterialButton(
                        //     onPressed: _showDatePicker,
                        //     child: Row(
                        //       // mainAxisAlignment: MainAxisAlignment.start,
                        //       children: [
                        //         Icon(
                        //           Icons.calendar_month,
                        //           color: ColorManager.primary,
                        //         ),
                        //         const SizedBox(
                        //           width: 4,
                        //         ),
                        //         Text(
                        //           selectedDate == null
                        //               ? "Pilih Tanggal Lahir"
                        //               : DateFormat('yyyy-MM-dd')
                        //                   .format(selectedDate!),
                        //           textAlign: TextAlign.start,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorManager.pinkL1, // background
                              foregroundColor: Colors.white, // foreground
                            ),
                            child: const Text('DAFTAR'),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          child: Row(
                            children: [
                              const Text('Sudah punya akun?'),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (_) => const LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Masuk",
                                  style: TextStyle(color: ColorManager.pinkL1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07),
                      ],
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
