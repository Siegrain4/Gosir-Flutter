import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:simpelin/src/theme/theme.dart';

class Verify extends StatefulWidget {
  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFFFFF)),
          onPressed: () {},
        ),
        // title: Text("Sample"),
        // centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img1.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Enter Verification Code',
                style: poppinsTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Verification code has been\nsent to the email you registered',
                style: poppinsTextStyle.copyWith(
                    fontSize: 16, color: Color(0xFFADADAD)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 310,
                        child: Pinput(
                          length: 5,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFFB133),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFFB133).withOpacity(0.4),
                        blurRadius: 4,
                        spreadRadius: 2,
                        // offset: ,
                      )
                    ]),
                child: SizedBox(
                  width: 100,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffFFB133),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Please wait within',
                    style: TextStyle(fontSize: 10, color: Color(0xFFADADAD)),
                  ),
                  Text(
                    ' 20 seconds ',
                    style: TextStyle(fontSize: 10, color: Color(0xFFFFB133)),
                  ),
                  Text(
                    'to resend the verification code',
                    style: TextStyle(fontSize: 10, color: Color(0xFFADADAD)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
