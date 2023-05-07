import 'package:flutter/material.dart';

class Laporan extends StatefulWidget {
  @override
  State<Laporan> createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Laporan',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color(0xFFFFB133),
        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {},
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: 580,
          child: Stack(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFFFB133),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                padding: EdgeInsets.only(left: 10, right: 10),
              ),
              Container(
                height: 600,
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                padding:
                    EdgeInsets.only(top: 30, bottom: 40, left: 30, right: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, blurRadius: 1, spreadRadius: 0.5)
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rangkuman',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ringkasan Penjualan',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Penjualan Per Produk',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Penjualan Per Kategori',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Laba & Rugi',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Laporan Pegawai',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Laporan Pelanggan',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pusat Bantuan',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          size: 20,
                        )
                      ],
                    ),
                    Text(
                      '_________________________________________',
                      style: TextStyle(color: Color(0xFFFFB133)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
