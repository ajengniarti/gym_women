import 'package:app_gym/resources/color_manager.dart';
import 'package:flutter/material.dart';

class PesanKelasScreen extends StatefulWidget {
  const PesanKelasScreen({super.key});

  @override
  State<PesanKelasScreen> createState() => _PesanKelasScreenState();
}

class _PesanKelasScreenState extends State<PesanKelasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pesan Kelas Gym',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: ColorManager.pinkL1,
        ), // U
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/Pilates.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // newData == null
                //     ? SizedBox(
                //         height: MediaQuery.of(context).size.height * 0.3,
                //         child: Padding(
                //           padding: const EdgeInsets.symmetric(
                //               horizontal: 20, vertical: 10),
                //           child: CommonShimmerWidget()
                //               .buildTextDetailShimmer(context),
                //         ),
                //       )
                //     :
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PILATES',
                        // +widget.productDonasiModel.collected!
                        // .toString()
                        // +
                        // " /  Rp. 100.000 ",
                        //  + widget.productDonasiModel.target!.toString(),
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      // const SizedBox(height: 20),
                      // LinearPercentIndicator(
                      //   width: 370.0,
                      //   animation: true,
                      //   animationDuration: 1000,
                      //   lineHeight: 20.0,
                      //   percent: progress1 =
                      //       widget.productDonasiModel.progress! / 100,
                      //   center: Text(
                      //       widget.productDonasiModel.progress!.toString() +
                      //           " %"),
                      //   linearStrokeCap: LinearStrokeCap.butt,
                      //   progressColor: Colors.blue,
                      // ),
                      const SizedBox(height: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Nama Instruktur : Clarista Bunga Shinta',
                              // +widget.productDonasiModel.collected!
                              // .toString()
                              // +
                              // " /  Rp. 100.000 ",
                              //  + widget.productDonasiModel.target!.toString(),
                              textAlign: TextAlign.right,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text(
                                'Waktu Pelaksanaan Kelas',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Tanggal : ',
                                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                                  Text('10 Oktober 2023',
                                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                                  SizedBox(width: 210),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Waktu : ',
                                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                                  Text('15.00',
                                  style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),),
                                  SizedBox(width: 255),
                                ],
                              ),
                            ],
                          ),
                          // Container(
                          //   width: MediaQuery.of(context).size.width * 0.2,
                          //   height: MediaQuery.of(context).size.height * 0.005,
                          //   color: ColorManager.blue,
                          // ),
                          // const SizedBox(height: 25),
                          // const Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Kelompok Tani :  ",
                          //       style: TextStyle(
                          //           fontWeight: FontWeight.bold, fontSize: 13),
                          //     ),
                          //     Text(
                          //       'nama',
                          //       // widget.productDonasiModel.nama_ukm!,
                          //       style: TextStyle(fontSize: 13),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 15),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Lokasi :  ",
                          //       style: const TextStyle(
                          //           fontWeight: FontWeight.bold, fontSize: 13),
                          //     ),
                          //     Text(
                          //       'bhabs',
                          //       // widget.productDonasiModel.nama_lokasi!,
                          //       style: TextStyle(fontSize: 13),
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(height: 15),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Jenis Pohon :  ",
                          //       style: const TextStyle(
                          //           fontWeight: FontWeight.bold, fontSize: 13),
                          //     ),
                          //     Text(
                          //       '',
                          //       style: TextStyle(fontSize: 13),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 15),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Batas Donasi :  ",
                          //       style: const TextStyle(
                          //           fontWeight: FontWeight.bold, fontSize: 13),
                          //     ),
                          //     Text(
                          //       '14/10/2023',
                          //       // dueDate1.toString(),
                          //       style: TextStyle(fontSize: 13),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 15),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Penanaman :  ",
                          //       style: const TextStyle(
                          //           fontWeight: FontWeight.bold, fontSize: 13),
                          //     ),
                          //     Text(
                          //       '-',
                          //       style: TextStyle(fontSize: 13),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 15),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Mitra Penanaman :  ",
                          //       style: const TextStyle(
                          //           fontWeight: FontWeight.bold, fontSize: 13),
                          //     ),
                          //     Text(
                          //       'bvj,m',
                          //       // widget.productDonasiModel.nama_mitra!,
                          //       style: TextStyle(fontSize: 13),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                      // const SizedBox(height: 35),
                      Center(
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  ColorManager.pinkL1, // background
                              foregroundColor: Colors.white, // foreground
                            ),
                            onPressed: () {
                              // Buka URL di browser
                              // launch('https://bumibaik.com/donate-payment/' + Linkid.toString());
                            },
                            child: const Text('Pesan Sekarang'),
                          ),
                        ),
                      ),

                      // const SizedBox(height: 35),
                      //  Column(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         // LaunchButton
                      //       ],
                      //     ),

                      // const SizedBox(height: 35),
                      // SizedBox(
                      //   height: 50,
                      //   width: 200,
                      //   child:
                      //   ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor:
                      //           ColorManager.primary, // background
                      //       foregroundColor: Colors.white, // foreground
                      //     ),
                      //     child: isLoading
                      //         ? const Padding(
                      //             padding: EdgeInsets.all(8.0),
                      //             child: CircularProgressIndicator(
                      //               color: Colors.white,
                      //             ),
                      //           )
                      //         : const Text('Donasi Sekarang'),
                      //     onPressed: () async {
                      //       // // CommonDialogWidget.buildOkDialog(
                      //       // //     context,
                      //       // //     false,
                      //       // //     "Fitur pembayaran masih dalam tahap pengembangan.");
                      //       // if (_selectedIndex == null) {
                      //       //   CommonDialogWidget.buildOkDialog(
                      //       //       context,
                      //       //       false,
                      //       //       "Harap pilih nominal pembelian terlebih dahulu.");
                      //       // } else {
                      //       //   startTransaction();
                      //       // }
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}