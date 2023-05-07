import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simpelin/src/pages/Navbar.dart';
import 'package:simpelin/src/controller/ProdukController.dart';
import 'package:simpelin/src/controller/LoginController.dart';
import 'package:simpelin/src/services/api.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/storage/preference.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  LoginController log = Get.put(LoginController());
  final ProdukController produk = Get.put(ProdukController());
  String? name;
  String? storeName;
  String? id;

  getAtribute() async {
    name = await getNama();
    storeName = await getStore();
    id = await getUser();

    String? nama;
    String? store;
    String? userId;
    setState(() {
      nama = name;
      store = storeName;
      userId = id;
      // storeName = await getStore();
    });
  }

  @override
  void initState() {
    getAtribute();
    super.initState();
    produk.getProduk();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB133),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              InkWell(
                                onTap: () => Get.toNamed(pemasukanRoute),
                                child: Container(
                                  // padding: EdgeInsets.all(0),
                                  width: 40,
                                  child:
                                      Icon(Icons.replay, color: Colors.white),
                                ),
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(settingRoute),
                                child: Container(
                                  width: 40,
                                  child:
                                      Icon(Icons.settings, color: Colors.white),
                                ),
                              ),
                              InkWell(
                                onTap: () => Get.toNamed(addprodukRoute,
                                    arguments: [id]),
                                child: Container(
                                  width: 20,
                                  child: Icon(
                                    Icons.control_point_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Hello, ${name}\nWelcome To Go-Sir',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.supervised_user_circle_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '${storeName}',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 49,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 190,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Search Product',
                                      border: InputBorder.none),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.search),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(othersRoute),
                          child: Text(
                            'Others',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFB133)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Obx(() {
                      if (produk.isLoading.value) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: produk.produk!.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, bottom: 20, top: 10),
                                      child: InkWell(
                                        onTap: () => Get.offAndToNamed(
                                            detailRoute,
                                            arguments: [
                                              produk.produk[index].id,
                                              produk.produk[index].namaProduk,
                                              produk.produk[index].deskripsi,
                                              produk.produk[index].harga,
                                              produk.produk[index].stok,
                                              produk.produk[index].image ?? ""
                                            ]),
                                        child: Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 170,
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 7,
                                                            offset:
                                                                Offset(0, 7))
                                                      ]),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 110,
                                                        width: MediaQuery.of(context).size.width * 0.5,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          // image: DecorationImage(
                                                          //     image: AssetImage(
                                                          //         'assets/jahelemon.jpg'),
                                                          //     fit: BoxFit.cover)
                                                        ),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: produk
                                                                        .produk[index]
                                                                        .image ==
                                                                    null
                                                                ? Image.asset(
                                                                    'assets/jahelemon.jpg',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  )
                                                                : Image.network(
                                                                    produk
                                                                        .produk[index]
                                                                        .image!,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  child: Positioned(
                                                    top: 100,
                                                    child: Container(
                                                      height: 25,
                                                      width: 90,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFFFB133),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        20),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        20)),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          produk.produk[index]
                                                              .namaProduk!,
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 135),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        produk.produk[index]
                                                            .deskripsi!,
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Color(
                                                                0xFF717171)),
                                                      ),
                                                      SizedBox(height: 10),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            height: 25,
                                                            width: 75,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xFFC4C4C4),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30)),
                                                            child: Center(
                                                              child: Text(
                                                                produk
                                                                    .produk[
                                                                        index]
                                                                    .harga!
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 25),
                                                          Text(
                                                            produk.produk[index]
                                                                .stok!
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Color(
                                                                    0xFFFFB133),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            });
                      }
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
