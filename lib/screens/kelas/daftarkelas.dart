import 'package:app_gym/resources/color_manager.dart';
import 'package:app_gym/screens/main_buttomNavigasi.dart';
import 'package:flutter/material.dart';

class DaftarKelasScreen extends StatefulWidget {
  const DaftarKelasScreen({super.key});

  @override
  State<DaftarKelasScreen> createState() => _DaftarKelasScreenState();
}

class _DaftarKelasScreenState extends State<DaftarKelasScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Daftar Kelas Gym',
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
          ), // Ubah warna ikon kembali menjadi hitam
          bottom: TabBar(
            labelColor: Colors.black, // Membuat teks tab menjadi hitam
            indicatorColor:
                ColorManager.pinkL1, // Membuat garis bawah tab menjadi hitam
            tabs: const [
              Tab(
                text: 'Kelas Umum',
              ),
              Tab(
                text: 'Kelas Privat',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 1.0,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.45, // Mengatur lebar Card
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height * 0.13,
                                      width: MediaQuery.of(context).size.width *
                                          0.45, // Mengatur lebar gambar
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          "assets/images/Pilates.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.45, // Mengatur lebar konten
                                      padding:
                                          const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pilates',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                ?.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Icon(Icons.calendar_month),
                                              const SizedBox(width: 5),
                                              Text(
                                                '18 - Januari 2024',
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(width: 10), // Spacer antara kedua card
                            Card(
                              elevation: 1.0,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.45, // Mengatur lebar Card
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height * 0.13,
                                      width: MediaQuery.of(context).size.width *
                                          0.45, // Mengatur lebar gambar
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          "assets/images/Pilates.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.45, // Mengatur lebar konten
                                      padding:
                                          const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pilates',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                ?.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Icon(Icons.calendar_month),
                                              const SizedBox(width: 5),
                                              Text(
                                                '18 - Januari 2024',
                                                overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                         Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 1.0,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.45, // Mengatur lebar Card
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar gambar
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      "assets/images/Pilates.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar konten
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pilates',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month),
                                          const SizedBox(width: 5),
                                          Text(
                                            '18 - Januari 2024',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 10), // Spacer antara kedua card
                        Card(
                          elevation: 1.0,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.45, // Mengatur lebar Card
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar gambar
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      "assets/images/Pilates.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar konten
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pilates',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month),
                                          const SizedBox(width: 5),
                                          Text(
                                            '18 - Januari 2024',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 1.0,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.45, // Mengatur lebar Card
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar gambar
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      "assets/images/Pilates.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar konten
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pilates',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month),
                                          const SizedBox(width: 5),
                                          Text(
                                            '18 - Januari 2024',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 10), // Spacer antara kedua card
                        Card(
                          elevation: 1.0,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.45, // Mengatur lebar Card
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar gambar
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      "assets/images/Pilates.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.45, // Mengatur lebar konten
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 10, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pilates',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month),
                                          const SizedBox(width: 5),
                                          Text(
                                            '18 - Januari 2024',
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
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
                ),
              ]))
        ]),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    // title: const Text(
    //   'Daftar Kelas Gym',
    //   style: TextStyle(
    //       fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    // ),
    // centerTitle: true,
    // backgroundColor: Colors.white,
    //     leading: IconButton(
    //       icon: Icon(
    //         Icons.arrow_back,
    //         color: ColorManager.pinkL1,
    //       ),
    //       onPressed: () {
    //         Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => const ButtomNavigasiHome(),
    //             ));
    //       },
    //     ),
    //   ),
    //   body: Card(
    //     elevation: 1.0,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         SizedBox(
    //           height: MediaQuery.of(context).size.height * 0.13,
    //           width: MediaQuery.of(context).size.width * 0.45,
    //           child: ClipRRect(
    //             borderRadius: const BorderRadius.only(
    //               topLeft: Radius.circular(10),
    //               topRight: Radius.circular(10),
    //             ),
    //             child: Image.asset("assets/images/Pilates.png"),
    //           ),
    //         ),
    //         Container(
    //           height: MediaQuery.of(context).size.height * 0.22,
    //           width: MediaQuery.of(context).size.width * 0.40,
    //           padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Text(
    //                 'Pilates',
    //                 // widget.donasiList[index].title!,
    //                 overflow: TextOverflow.ellipsis,
    //                 softWrap: true,
    //                 style: Theme.of(context).textTheme.headline6?.copyWith(
    //                       color: Colors.black,
    //                       fontSize: 18,
    //                     ),
    //               ),
    //               const SizedBox(height: 10),
    //               Text(
    //                 'bgvgfgvhbjnm',
    //                 // widget.donasiList[index].nama_ukm!,
    //                 overflow: TextOverflow.ellipsis,
    //                 softWrap: true,
    //                 style: Theme.of(context).textTheme.headline6?.copyWith(
    //                       color: Colors.black,
    //                       fontSize: 12,
    //                     ),
    //               ),
    //               // const SizedBox(height: 10),
    //               // LinearPercentIndicator(
    //               //   width: 144.0,
    //               //   animation: true,
    //               //   animationDuration: 1000,
    //               //   lineHeight: 11.0,
    //               //   // leading: new Text("left content"),
    //               //   // trailing: new Text("right content"),
    //               //   percent: progress1 =
    //               //       widget.donasiList[index].progress! / 100,
    //               //   center: Text(
    //               //     widget.donasiList[index].progress.toString() + " %",
    //               //     style: TextStyle(fontSize: 10),
    //               //   ),
    //               //   linearStrokeCap: LinearStrokeCap.butt,
    //               //   progressColor: Colors.blue,
    //               // ),
    //               const SizedBox(height: 15),
    //               Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     'Rp Free',
    //                     // 'Rp. ' + widget.donasiList[index].collected.toString(),
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.bold, fontSize: 12),
    //                   ),
    //                   Text(
    //                     '10 Hari Lagi',
    //                     // "${calculateRemainingDays(widget.donasiList[index].due_date!)} hari lagi",
    //                     style: Theme.of(context).textTheme.headline6?.copyWith(
    //                           color: Colors.black,
    //                           fontSize: 12,
    //                         ),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(height: 10),
    //               Text(
    //                 "Pohon terkumpul",
    //                 style: Theme.of(context).textTheme.headline6?.copyWith(
    //                       color: Colors.black,
    //                       fontSize: 12,
    //                     ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
