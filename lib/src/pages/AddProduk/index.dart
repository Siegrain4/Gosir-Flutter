import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:simpelin/src/controller/AddProdukController.dart';
import 'package:simpelin/src/controller/UploadController.dart';
import 'package:simpelin/src/storage/preference.dart';

class AddProduk extends StatefulWidget {
  const AddProduk({Key? key}) : super(key: key);

  @override
  State<AddProduk> createState() => _AddProdukState();
}

class _AddProdukState extends State<AddProduk> {
  TextEditingController nama_produk = TextEditingController();
  TextEditingController deskripsi = TextEditingController();
  TextEditingController stok = TextEditingController();
  TextEditingController harga = TextEditingController();
  AddProdukController addProduk = Get.put(AddProdukController());
  final upload = Get.put(UploadController());

  String uploadImageUrl = '';

  bool validate = false;
  String? userId;
  // var id = Get.arguments[0];

  getAtribute() async {
    userId = await getUser();

    String? user;
    setState(() {
      user = userId;
    });
  }

  @override
  void initState() {
    super.initState();
    // getAtribute();
    getAtribute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: 500,
              decoration: BoxDecoration(color: yellowColor),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 25),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Get.offAllNamed(dashboardRoute),
                      child: Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                        size: 30,
                      ),
                    ),
                    Text(
                      'Add Product',
                      style: poppinsTextStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                children: [
                  // Obx(() => upload.imageURL.value == ''
                  //     ? Text(
                  //         'Select Image from gallery',
                  //         style: TextStyle(fontSize: 20),
                  //       )
                  //     : Image.file(File(upload.imageURL.value))),
                  InkWell(
                    onTap: () async {
                      // upload.fetchImage();
                      // final image = await upload
                      // await upload.uploadIDPhoto();
                      // upload.pickImage;
                      upload.imageURL.value =
                          await upload.uploadImage(ImageSource.gallery);
                    },
                    child: Obx(() {
                      final imageurl = upload.imageURL.value;

                      if (imageurl == '') {
                        return Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage('assets/jahelemon.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: NetworkImage(imageurl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 110, left: 120),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
                      child: InkWell(
                        // onTap: upload.uploadImage(ImageSource.gallery),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 20,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userId.toString()),
                  Text(
                    'Product Name',
                    style: poppinsTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  TextField(
                    controller: nama_produk,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Enter product name",
                        hintStyle: poppinsTextStyle.copyWith(
                            color: Colors.grey[700], fontSize: 11)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Product Description',
                    style: poppinsTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  TextField(
                    controller: deskripsi,
                    style: poppinsTextStyle.copyWith(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Enter product description",
                        hintStyle: poppinsTextStyle.copyWith(
                            color: Colors.grey[700], fontSize: 11)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Stock',
                    style: poppinsTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  TextField(
                    controller: stok,
                    style: poppinsTextStyle.copyWith(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Enter product stock",
                        hintStyle: poppinsTextStyle.copyWith(
                            color: Colors.grey[700], fontSize: 11)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Price',
                    style: poppinsTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  TextField(
                    controller: harga,
                    style: poppinsTextStyle.copyWith(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Enter product price (Rp)",
                        hintStyle: poppinsTextStyle.copyWith(
                            color: Colors.grey[700], fontSize: 11)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      userId;
                      getUser();
                      if (nama_produk.text.isEmpty ||
                          deskripsi.text.isEmpty ||
                          stok.text.isEmpty ||
                          harga.text.isEmpty) {
                        userId;
                        setState(() {
                          validate = true;
                        });
                      } else {
                        await addProduk.addProduk(
                            userId.toString(),
                            nama_produk.text,
                            deskripsi.text,
                            stok.text,
                            harga.text,
                            upload.imageURL.toString());
                      }
                    },
                    child: Container(
                      height: 45,
                      width: 400,
                      decoration: BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: const Offset(0, 5))
                        ],
                      ),
                      child: Center(
                        child: Obx(() {
                          return addProduk.isLoading.value == true
                              ? CircularProgressIndicator(
                                  color: whiteColor,
                                )
                              : Text(
                                  'Add Product',
                                  style: poppinsTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
