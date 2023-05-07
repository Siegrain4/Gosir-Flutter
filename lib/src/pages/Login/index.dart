import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simpelin/src/controller/LoginController.dart';
import 'package:simpelin/src/pages/Dashboard/index.dart';
import 'package:simpelin/src/storage/preference.dart';
import 'package:simpelin/src/theme/theme.dart';


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool validate = false;
  bool inHiddenPass = true;
  bool _isHidden = true;
  String? finalEmail;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  LoginController loginCon = Get.put(LoginController());
  bool passToggle = true;

  @override
  void initState() {
    getValidationData().whenComplete(() async {
      Timer(Duration(seconds: 2), () => Get.to(finalEmail == null ? Login() : Dashboard()));
    });
    super.initState();
  }
  Future getValidationData() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    var obtainedEmail = shared.getString('email');
    setState(() {
      finalEmail = obtainedEmail;
    });
    print(finalEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/register.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            ' Sign In',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 50),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Welcome\nBack ....',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 120),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Sugeng.png',
                            width: 92,
                            height: 105,
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 0.5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'User your Email',
                              filled: true,
                              prefixIcon: Icon(Icons.email_outlined,
                                  color: Colors.black),
                              // suffix: InkWell(
                              //   onTap: () {
                              //     setState(() {});
                              //   },
                              // )
                              errorText:
                                  validate ? 'Email Tidak boleh kosong' : null),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 0.5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          obscureText: _isHidden,
                          controller: password,
                          decoration: InputDecoration(
                              hintText: 'Enter your Password',
                              prefixIcon: Icon(Icons.lock_outlined,
                                  color: Colors.black),
                              suffix: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(passToggle
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              )),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                'Forget Password?',
                                style: TextStyle(color: Color(0xFFFFB133)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () async {
                          setEmail(email.text);
                          if (email.text.isEmpty || password.text.isEmpty) {
                            setState(() {
                              validate = true;
                            });
                          } else {
                            await loginCon.loginUser(email.text, password.text);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFB133),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(child: Obx(() {
                              return loginCon.isLoading.value == true
                                  ? CircularProgressIndicator(
                                      color: whiteColor,
                                    )
                                  : Text(
                                      'Sign In',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    );
                            }
                            )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have on account?",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFFFB133)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              '________________ Or Sign In With ________________',
                              style: TextStyle(
                                  color: Color(0xffADADAD),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/goo.png',
                            width: 50,
                            height: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
