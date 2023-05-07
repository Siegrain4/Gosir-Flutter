import 'package:flutter/material.dart';
import 'package:simpelin/src/router/constant.dart';
import 'package:get/get.dart';

class Halaw extends StatefulWidget {
  @override
  State<Halaw> createState() => _HalawState();
}

class _HalawState extends State<Halaw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //   child: Container(
        //     height: 830,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg1.png'), fit: BoxFit.cover)),
            ),
            SizedBox(height: 50),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    heightFactor: 4,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Welcome to\nGo-Sir',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 300),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Sugeng.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          height: 75,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(loginRoute),
                          child: Container(
                            height: 41,
                            width: 264,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFB133),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(registerRoute),
                          child: Container(
                            height: 41,
                            width: 264,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xFFFFB133)),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        // ),
      ),
    );
  }
}
