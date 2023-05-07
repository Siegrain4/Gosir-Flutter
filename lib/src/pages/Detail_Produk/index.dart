import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:simpelin/src/controller/ProdukController.dart';
import 'package:get/get.dart';
import 'package:simpelin/src/pages/Navbar.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({Key? key}) : super(key: key);

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {

  var id = Get.arguments[0];
  var namaProduk = Get.arguments[1];
  var deskripsi = Get.arguments[2];
  var harga = Get.arguments[3];
  var stok = Get.arguments[4];
  var image = Get.arguments[5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.black,
                    // image: DecorationImage(
                    //     image: AssetImage('assets/jejamuan.jpg'),
                    //     fit: BoxFit.cover)
                ),
                child: Image.network(image,fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 200, right: 20),
                child: Container(
                  height: 370,
                  width: 380,
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
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namaProduk,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          deskripsi,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Category',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Snack',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Harga',
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Rp. ${harga.toString()}',
                          style: TextStyle(fontSize:11,color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.red,
                                          blurRadius: 3,
                                          offset: const Offset(0, 3))
                                    ],
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.delete_forever,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: yellowColor,
                                        blurRadius: 3,
                                        offset: const Offset(0, 3))
                                  ],
                                  color: yellowColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(
                                Icons.edit_note,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Stock',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.yellow[800],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: yellowColor),
                    ),
                    hintText: "Masukkan jumlah stok",
                    hintStyle: TextStyle(color: Colors.grey[700]),
                    //labelText: "Username",
                    labelStyle: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.bold),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  stok.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
