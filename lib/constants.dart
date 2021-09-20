import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFA0A2A4);
/*const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);*/
const kSecondaryColor = Color(0xFF000000);
const kTextColorBlack = Color(0xFF000000);
const kTextColorWhite = Color(0xFFFFFFFF);
const kIconColor = Color(0xFFA0A2A4);
final kShadowColor = Color(0xFFD3D3D3).withOpacity(.84);

const kAnimationDuration = Duration(milliseconds: 200);

// From Error
final RegExp emailValidatorRegExp =
//RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final String kEmailNullError = 'Please Enter Your Email';
final String kInvalidEmailError = 'Please Enter Valid Email';
final String kPassNullError = 'Please Enter Password';
final String kShortPassError = 'Password is too short';
final String kMatchPassError = 'Password don\'t match';
final String kNameNullError = 'Please Enter your name';
final String kPhoneNumberNullError = 'Please Enter Phone Number';
final String kAddressNullError = 'Please Enter Address';

const kDefaultPadding = 20.0;
