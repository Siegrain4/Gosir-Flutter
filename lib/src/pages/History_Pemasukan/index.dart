import 'package:flutter/material.dart';
import 'package:simpelin/src/pages/Navbar.dart';

class HistoryPemasukan extends StatefulWidget {
  const HistoryPemasukan({Key? key}) : super(key: key);

  @override
  State<HistoryPemasukan> createState() => _HistoryPemasukanState();
}

class _HistoryPemasukanState extends State<HistoryPemasukan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'History',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 315,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2,
                              offset: const Offset(0, 1))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, bottom: 2, left: 20),
                            child: Text(
                              'Search Product',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, bottom: 2, right: 20),
                            child: Icon(Icons.search),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.amber[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9, top: 5),
                    child: Text(
                      "Pemasukan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.yellow[800],
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7, top: 5),
                      child: Text(
                        "Pengeluaran",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 25),
            child: Container(
              height: 120,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        blurRadius: 2,
                        offset: const Offset(0, 1)),
                  ],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 40),
                    child: Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/Sugeng.png'))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'NAMA (NO. MEJA)',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '01 OKTOBER 2022',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.close,
                              size: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pembayaran Sukses',
                          style: TextStyle(
                              color: Colors.yellow[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Pembayaran kasir telah sukses',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 12),
                        ),
                        Text(
                          'menggunakan aplikasi Go-Sir',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 15),
            child: Container(
              height: 120,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        blurRadius: 2,
                        offset: const Offset(0, 1)),
                  ],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 40),
                    child: Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/Sugeng.png'))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'NAMA (NO. MEJA)',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '20 AGUSTUS 2022',
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.close,
                              size: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pembayaran Sukses',
                          style: TextStyle(
                              color: Colors.yellow[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Pembayaran kasir telah sukses',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 12),
                        ),
                        Text(
                          'menggunakan aplikasi Go-Sir',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
