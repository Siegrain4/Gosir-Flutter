import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpelin/src/theme/theme.dart';

class EditProduk extends StatefulWidget {
  const EditProduk({Key? key}) : super(key: key);

  @override
  State<EditProduk> createState() => _EditProdukState();
}

class _EditProdukState extends State<EditProduk> {
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
                    Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                      size: 30,
                    ),
                    Text(
                      'Edit Product',
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
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: blackColor,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('assets/jahelemon.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 110, left: 120),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 20,
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
                  Text(
                    'Product Name',
                    style: poppinsTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  TextField(
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
                    'Category',
                    style: poppinsTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  TextField(
                    style: poppinsTextStyle.copyWith(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Enter product category",
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
                    style: poppinsTextStyle.copyWith(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Enter product price (Rp)",
                        hintStyle: poppinsTextStyle.copyWith(
                            color: Colors.grey[700], fontSize: 11)),
                  ),
                  SizedBox(
                    height: 20,
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
                            blurRadius: 2,
                            offset: const Offset(0, 5))
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: poppinsTextStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
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
