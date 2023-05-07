import 'package:flutter/material.dart';

class Ringkasan extends StatefulWidget {
  @override
  State<Ringkasan> createState() => _RingkasanState();
}

class _RingkasanState extends State<Ringkasan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Color(0xFFFFB133),
                        size: 30,
                      ),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Color(0xFFFFB133),
                        size: 30,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFB133),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.maps_home_work_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text(
                          'Pusat',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Divider(
                  color: Color.fromARGB(255, 244, 237, 237),
                  indent: 0,
                  // endIndent: 40,
                  height: 10,
                  thickness: 5,
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ringkasan Penjualan',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10, left: 10, bottom: 10, top: 6),
                              height: 40,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xFFFFB133)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Icon(Icons.date_range_sharp),
                                  SizedBox(width: 10),
                                  Text(
                                    '20/10/2022 - 10/20/2022',
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Divider(
                  color: Color(0xFFFFB133),
                  indent: 0,
                  // endIndent: 40,
                  height: 10,
                  thickness: 2,
                ),
                SizedBox(height: 20),
                Container(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 30),
                  height: 325,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFFFB133),
                          blurRadius: 1,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Penjualan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Penjualan Kotor - (Diskon + Reedem Poin) + Pajak',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF7F8C8D)),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Penjualan Koto',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Diskon',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Penjualan Bersih',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Penjualan',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 30),
                  height: 290,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFFFB133),
                          blurRadius: 1,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Keuntungan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Total Penjualan Bersih - Harga Modal',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF7F8C8D)),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Penjualan Bersih',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Harga Modal',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Keuntungan',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '*Biaya Operasional yang tercatat di Kas Keluar belum ikut terhitung untuk Total Keuntungan',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    '*Kamu hanya bisa melihat riwayat 1 bulanterakhir. Untuk melihat riwayat lebih dari 1 bulansilahkan berlangganan Go-sir Pro melewatiaplikasi Go-sir.',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
