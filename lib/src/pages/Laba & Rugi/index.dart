import 'package:flutter/material.dart';

class LabaRugi extends StatefulWidget {
  @override
  State<LabaRugi> createState() => _LabaRugiState();
}

class _LabaRugiState extends State<LabaRugi> {
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
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
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
                              'Laba & Rugi',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
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
                                    style: TextStyle(fontSize: 17),
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
                  height: 240,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
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
                            'Pendapatan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Penjualan bersih',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(fontSize: 17),
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
                            'Pendapatan Sewa',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 17),
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
                            'Total Pendapatan',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 30),
                  height: 420,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
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
                            'Beban',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Harga Pokok Penjualan',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(fontSize: 17),
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
                            'Beban Penjualan',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 17),
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
                            'Beban Administrasi',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 17),
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
                            'Beban Bunga',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Rp 0',
                            style: TextStyle(fontSize: 17),
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
                            'Beban Lainnya',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 17),
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
                            'Beban Perlengkapan',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '-Rp 0',
                            style: TextStyle(fontSize: 17),
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
                            'Laba Usaha',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        '_____________________________________',
                        style: TextStyle(color: Color(0xFFFFB133)),
                      ),
                    ],
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
