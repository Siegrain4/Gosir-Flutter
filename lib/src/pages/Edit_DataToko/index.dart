import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simpelin/src/theme/theme.dart';

class EditDataToko extends StatefulWidget {
  const EditDataToko({Key? key}) : super(key: key);

  @override
  State<EditDataToko> createState() => _EditDataTokoState();
}

class _EditDataTokoState extends State<EditDataToko> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 270,
                  width: 500,
                  decoration: BoxDecoration(color: yellowColor),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 30),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 10),
                        child: Text(
                          'Edit Data',
                          style: poppinsTextStyle.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
                  child: Container(
                    height: 600,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2,
                              offset: const Offset(0, 1)),
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage('assets/toko.jpg'),
                                      fit: BoxFit.cover),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        offset: const Offset(0, 1)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 70, left: 70),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.store_outlined,
                                    color: yellowColor,
                                    size: 25,
                                  ),
                                  Text(
                                    'Nama Toko',
                                    style: poppinsTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              TextField(
                                style: poppinsTextStyle.copyWith(color: Colors.black),
                                decoration: InputDecoration(
                                    hintText: "Masukkan nama toko",
                                    hintStyle: poppinsTextStyle.copyWith(
                                        color: Colors.grey[700], fontSize: 12)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    color: yellowColor,
                                    size: 25,
                                  ),
                                  Text(
                                    'Nama',
                                    style: poppinsTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              TextField(
                                style: poppinsTextStyle.copyWith(color: Colors.black),
                                decoration: InputDecoration(
                                    hintText: "Masukkan nama user",
                                    hintStyle: poppinsTextStyle.copyWith(
                                        color: Colors.grey[700], fontSize: 12)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail_outline,
                                    color: yellowColor,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Email',
                                    style: poppinsTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              TextField(
                                style: poppinsTextStyle.copyWith(color: Colors.black),
                                decoration: InputDecoration(
                                    hintText: "Masukkan email user",
                                    hintStyle: poppinsTextStyle.copyWith(
                                        color: Colors.grey[700], fontSize: 12)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: yellowColor,
                                    size: 25,
                                  ),
                                  Text(
                                    'Alamat Toko',
                                    style: poppinsTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              TextField(
                                style: poppinsTextStyle.copyWith(color: Colors.black),
                                decoration: InputDecoration(
                                    hintText: "Masukkan alamat toko",
                                    hintStyle: poppinsTextStyle.copyWith(
                                        color: Colors.grey[700], fontSize: 12)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock_outline,
                                    color: yellowColor,
                                    size: 25,
                                  ),
                                  Text(
                                    'Password',
                                    style: poppinsTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              TextField(
                                style: poppinsTextStyle.copyWith(color: Colors.black),
                                decoration: InputDecoration(
                                    suffixIcon: InkWell(
                                      child: Icon(
                                        Icons.visibility,
                                        size: 15,
                                      ),
                                    ),
                                    hintText: "Masukkan password",
                                    hintStyle: poppinsTextStyle.copyWith(
                                        color: Colors.grey[700], fontSize: 12)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: const Offset(0, 3)),
                  ],
                  color: yellowColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'Simpan',
                style: poppinsTextStyle.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            )
          ],
        ),
      ),
    );
  }
}