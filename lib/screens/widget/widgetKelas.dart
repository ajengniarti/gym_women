import 'package:flutter/material.dart';

class CardKelasScreen extends StatefulWidget {
  const CardKelasScreen({super.key});

  @override
  State<CardKelasScreen> createState() => _CardKelasScreenState();
}

class _CardKelasScreenState extends State<CardKelasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 1.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.4,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.asset("assets/images/image.png")),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 10),
                    Text(
                      // widget.donasiModel!.title!,
                      'Pilates',
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(
                          // widget.donasiModel!.nama_ukm!,
                          '18 - Januari 2024',
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ],
                    ),
                    // const SizedBox(height: 10),
                    // LinearPercentIndicator(
                    //   width: 144.0,
                    //   animation: true,
                    //   animationDuration: 1000,
                    //   lineHeight: 11.0,
                    //   // leading: new Text("left content"),
                    //   // trailing: new Text("right content"),
                    //   percent: progress1 =
                    //       widget.donasiModel!.progress! / 100,
                    //   center: Text(
                    //     widget.donasiModel!.progress.toString() + '%',
                    //     style: TextStyle(fontSize: 10),
                    //   ),
                    //   linearStrokeCap: LinearStrokeCap.butt,
                    //   progressColor: Colors.blue,
                    // ),
                    // const SizedBox(height: 15),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment:
                    //       MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       "Rp " +
                    //           widget.donasiModel!.collected
                    //               .toString(),
                    //       style: const TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 12),
                    //     ),
                    //     Text(
                    //       remainingDays.toString() + ' hari lagi',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 12),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 10),
                    // Text(
                    //   "Pohon terkumpul",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .headline6
                    //       ?.copyWith(
                    //         color: Colors.black,
                    //         fontSize: 12,
                    //       ),
                    // ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
