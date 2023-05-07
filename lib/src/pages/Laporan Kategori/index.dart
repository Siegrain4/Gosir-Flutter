import 'package:flutter/material.dart';

class LaporanKategori extends StatefulWidget {
  @override
  State<LaporanKategori> createState() => _LaporanKategoriState();
}

class _LaporanKategoriState extends State<LaporanKategori> {
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
                  width: 320,
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
                            'Penjualan Per\nKategori',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xFFFFB133)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(Icons.date_range_sharp),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xFFFFB133)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.search),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xFFFFB133)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Urutkan Berdasarkan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFFADADAD)),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Divider(
                  color: Color(0xFFFFB133),
                  indent: 0,
                  height: 10,
                  thickness: 1,
                ),
                SizedBox(height: 120),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/hiskos.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Belum Ada Transaksi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Pilih rentang waktu yang lain atau lakukan transaksi di kasir',
                        style: TextStyle(fontSize: 11),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 100),
                DefaultTabController(
                  length: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 50, right: 50, bottom: 10, top: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFFB133),
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TabBar(
                              indicator: BoxDecoration(
                                  color: Color(0xFFFF9901),
                                  borderRadius: BorderRadius.circular(40)),
                              tabs: [
                                Row(
                                  children: [
                                    Icon(Icons.compress_outlined),
                                    SizedBox(width: 5),
                                    Tab(text: 'Urutkan'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.download),
                                    SizedBox(width: 5),
                                    Tab(text: 'Export'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
