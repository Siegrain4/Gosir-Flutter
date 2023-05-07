import 'package:flutter/material.dart';
import 'package:simpelin/src/theme/theme.dart';

class Dashboardkos extends StatefulWidget {
  @override
  State<Dashboardkos> createState() => _DashboardkosState();
}

class _DashboardkosState extends State<Dashboardkos> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.home_outlined,
    Icons.account_circle_outlined,
    Icons.edit_note_outlined,
    Icons.shopping_cart_checkout
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 270,
                decoration: BoxDecoration(
                    color: Color(0xFFFFB133),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40))),
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 40,
                            child: Icon(Icons.replay, color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 40,
                            child: Icon(Icons.settings, color: Colors.white),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 40,
                            child: Icon(Icons.control_point_outlined,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hello, User',
                      style: poppinsTextStyle.copyWith(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Welcome to Go-Sir',
                      style: poppinsTextStyle.copyWith(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.supervised_user_circle_sharp,
                          size: 27,
                          color: whiteColor,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Username',
                          style: poppinsTextStyle.copyWith(
                              color: whiteColor, fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          // Icon(Icons.search),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 190,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Search Product",
                                  border: InputBorder.none),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.search),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 180),
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/kosong.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text(
                  'No product, please\nadd your product',
                  style: poppinsTextStyle.copyWith(fontSize: 13),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFFFB133),
          child: Container(
            height: 55,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (ctx, i) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    width: 35,
                    decoration: BoxDecoration(
                      border: i == selectedIndex
                          ? Border(
                              top: BorderSide(width: 3.0, color: Colors.white))
                          : null,
                      gradient: i == selectedIndex
                          ? LinearGradient(
                              colors: [Colors.white, Color(0xFFFF9D00)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)
                          : null,
                    ),
                    child: Icon(
                      data[i],
                      size: 35,
                      color: i == selectedIndex ? Colors.white : Colors.white,
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
