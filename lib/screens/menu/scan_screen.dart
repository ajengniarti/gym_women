import 'package:app_gym/resources/color_manager.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Column(
            //   children: <Widget>[
            //     SizedBox(
            //       height: MediaQuery.of(context).size.height * 0.15,
            //     ),
            //     Expanded(flex: 3, child: _buildQrView(context)),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.2,
                    image: const AssetImage('assets/images/logodp.png'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  const Text(
                    'Scan QR Code',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  const Text(
                    "Arahkan kamera ke kode QR yang terletak pada pohon.",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.pinkL1, // background
                        foregroundColor: Colors.white, // foreground
                      ),
                      child: const Text('SCAN'),
                      onPressed: () async {
                        // PersistentNavBarNavigator.pushNewScreen(
                        //   context,
                        //   screen: ScanPage(),
                        //   withNavBar: false,
                        // );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
