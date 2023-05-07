import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

Color yellowColor = Color(0xffFFB133);
Color blackColor = Color(0xff000000);
Color whiteColor = Color(0xffFFFFFF);

TextStyle poppinsTextStyle = GoogleFonts.poppins();

class CurrencyFormat{
  static String convertToIdr(dynamic number, int decimalDigit){
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}