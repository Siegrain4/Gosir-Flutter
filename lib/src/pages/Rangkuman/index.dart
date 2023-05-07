import 'package:flutter/material.dart';

class Rangkuman extends StatefulWidget {
  @override
  State<Rangkuman> createState() => _RangkumanState();
}

class _RangkumanState extends State<Rangkuman> {
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
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.store,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text('Pusat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20))),
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
                  height: 10,
                  thickness: 5,
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Beranda',
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
                SizedBox(height: 30),
                Divider(
                  color: Color(0xFFFFB133),
                  indent: 0,
                  height: 10,
                  thickness: 2,
                ),
                SizedBox(height: 20),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 30),
                  height: 130,
                  width: 230,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Total Penjualan',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Lihat Detail',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xFFFE0724)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
                  height: 130,
                  width: 230,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Total Keuntungan',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Lihat Detail',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xFFFE0724)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
                  height: 130,
                  width: 230,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Total Penjualan',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '6',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Lihat Detail',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xFFFE0724)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
                  height: 130,
                  width: 230,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Produk terjual',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Lihat Detail',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xFFFE0724)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
                  height: 260,
                  width: 230,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Detail Penjualan',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.quiz_outlined,
                            size: 18,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Penjualan Kotor',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Text(
                        '______________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Diskon',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Text(
                        '______________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Penjualan',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      Text(
                        '______________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Lihat Detail',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFFFE0724)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
                  height: 340,
                  width: 230,
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
                            'Kasbon',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.quiz_outlined,
                            size: 18,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Total Piutag',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        'Rp 0',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '______________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Total Uang Muka',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        'Rp 0',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '______________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Total Pelanggan',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        'Rp 0',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Pilih rentang waktu yang lain atau lakukan transaksi produk',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
