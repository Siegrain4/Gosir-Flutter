import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpelin/src/pages/Navbar.dart';
import 'package:simpelin/src/theme/theme.dart';

class DetailHistory extends StatefulWidget {
  const DetailHistory({Key? key}) : super(key: key);

  @override
  State<DetailHistory> createState() => _DetailHistoryState();
}

class _DetailHistoryState extends State<DetailHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(color: yellowColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 200),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Nama . 02',
                          style: poppinsTextStyle.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
                  child: Container(
                    height: 660,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2,
                              offset: const Offset(0, 1))
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('assets/toko.jpg'),
                                      fit: BoxFit.cover),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        offset: const Offset(0, 1))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Store Name',
                                      style: poppinsTextStyle.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Jl. Yudharta No.7, Kembangkuning,\nSengonagung, Kec. Purwosari,\nPasuruan, Jawa Timur 67162',
                                      style: poppinsTextStyle.copyWith(
                                          fontSize: 8),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 80,
                            width: 270,
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
                                Container(
                                  height: 80,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/jejamuan.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Jejamuan - Snack \nherbal masa kini',
                                            style: poppinsTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 40, top: 20),
                                            child: Container(
                                              height: 19,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber[100],
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                  border: Border.all(
                                                      color: yellowColor)),
                                              child: Text(
                                                '2X',
                                                style:
                                                    poppinsTextStyle.copyWith(
                                                        color: yellowColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Colors.amber[200],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            'Rp 5.000',
                                            style: poppinsTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 80,
                            width: 400,
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
                                Container(
                                  height: 80,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/gadjahaus.webp'),
                                          fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Kopi Gadja Haus -\nMinuman masa kini',
                                            style: poppinsTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 40, top: 20),
                                            child: Container(
                                              height: 19,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber[100],
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                  border: Border.all(
                                                      color: yellowColor)),
                                              child: Text(
                                                '2X',
                                                style:
                                                    poppinsTextStyle.copyWith(
                                                        color: yellowColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Colors.amber[200],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            'Rp 5.000',
                                            style: poppinsTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 80,
                            width: 400,
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
                                Container(
                                  height: 80,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/jahelemon.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Jahe Lemon -\nMinuman herbal',
                                            style: poppinsTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 50, top: 20),
                                            child: Container(
                                              height: 19,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.amber[100],
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                  border: Border.all(
                                                      color: yellowColor)),
                                              child: Text(
                                                '2X',
                                                style:
                                                    poppinsTextStyle.copyWith(
                                                        color: yellowColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Colors.amber[200],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            'Rp 5.000',
                                            style: poppinsTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Harga',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Text(
                                'Rp 25.000',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 1.5,
                            width: 400,
                            decoration: BoxDecoration(color: yellowColor),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tunai',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              SizedBox(
                                width: 160,
                              ),
                              Text(
                                'Rp 50.000',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kembali',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Text(
                                'Rp 25.000',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            height: 45,
                            width: 400,
                            decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    offset: const Offset(0, 3)),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Print Out',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
