import 'package:flutter/material.dart';
import 'package:simpelin/src/pages/Navbar.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:simpelin/src/storage/preference.dart';
import 'package:simpelin/src/theme/theme.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? name;
  String? storeName;
  String? email;

  getAtribute() async {
    name = await getNama();
    storeName = await getStore();
    email = await getEmail();

    String? nama;
    String? store;
    String? e_mail;
    setState(() {
      nama = name;
      store = storeName;
      e_mail = email;
    });
  }

  @override
  void initState() {
    getAtribute();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 660,
          child: Stack(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFFFFB133)),
                padding: EdgeInsets.only(left: 10, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 24,
                          ),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(settingRoute),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 24,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    ListTile(
                      title: Text(
                        '${storeName}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        '${name}',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      leading: CircleAvatar(),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 490,
                  width: 400,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.only(top: 10, bottom: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black, blurRadius: 1, spreadRadius: 0.5)
                    ],
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 30),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFB133),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Business Data',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.store_outlined,
                                size: 25,
                                color: Color(0xFFFFB133),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Nama Toko',
                                  style: poppinsTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                '${storeName}',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF9098B1)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_outline,
                                size: 25,
                                color: Color(0xFFFFB133),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Nama',
                                  style: poppinsTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                '${name}',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF9098B1)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                size: 25,
                                color: Color(0xFFFFB133),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Email',
                                  style: poppinsTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                '${email}',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF9098B1)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 25,
                                color: yellowColor,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Alamat',
                                  style: poppinsTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                'Alamat Toko',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF9098B1)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock_outline,
                                size: 25,
                                color: Color(0xFFFFB133),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Password',
                                  style: poppinsTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '..................',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF9098B1)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFB133),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Edit Data',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xFFFFB133)),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Sign Out',
                                style: poppinsTextStyle.copyWith(
                                    color: Color(0xFFFFB133),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
