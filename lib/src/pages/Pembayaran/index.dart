import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close_outlined),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        margin: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Payment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/gopa.png',
                  width: 50,
                  height: 40,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Rp 0',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'GoPay Coins 2',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '+ Cashback 1.945 GoPay Coins',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFFFB133)),
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.chevron_right_outlined,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
            Text(
              '________________________________________________',
              style: TextStyle(
                  color: Color(0xFFFFB133), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/ovo.png',
                  width: 50,
                  height: 40,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Rp 999',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'OVO Points 32',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.chevron_right_outlined,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 1),
            Text(
              '________________________________________________',
              style: TextStyle(
                  color: Color(0xFFFFB133), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/dola.png',
                  width: 50,
                  height: 40,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Tunai',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.chevron_right_outlined,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 1),
            Text(
              '________________________________________________',
              style: TextStyle(
                  color: Color(0xFFFFB133), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Text(
              'Select Payment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/bri.png',
                  width: 50,
                  height: 30,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Direct Debit BRI',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.chevron_right_outlined,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 1),
            Text(
              '________________________________________________',
              style: TextStyle(
                  color: Color(0xFFFFB133), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'assets/one.png',
                  width: 50,
                  height: 30,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Direct Debit BRI',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.chevron_right_outlined,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 1),
            Text(
              '________________________________________________',
              style: TextStyle(
                  color: Color(0xFFFFB133), fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
