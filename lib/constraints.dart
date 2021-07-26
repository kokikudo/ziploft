import 'package:flutter/material.dart';

//Login
const kSignInTextFieldLabelStyle = TextStyle(
  fontFamily: 'fonts/Poppins-SemiBold.ttf',
  fontSize: 12.0,
  color: Color(0xffD8D8D8),
);

const kForgetPasswordTextStyle = TextStyle(
    fontFamily: 'fonts/Poppins-Regular.ttf',
    fontSize: 12.0,
    color: Colors.blue);

const kSignInButtonTextStyle = TextStyle(
    fontFamily: 'Rubik',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 15.0);

const kDontHaveAnAccountTextStyle = TextStyle(
  fontFamily: 'fonts/Poppins-Regular.ttf',
);
const kSignUpTextStyle = TextStyle(
  fontFamily: 'fonts/Poppins-Regular.ttf',
  color: Colors.blue,
);

//Map
const kMapButtonTextStyle = TextStyle(
  fontFamily: 'fonts/Poppins-SemiBold.ttf',
);

const kMapPhotoPriceTextStyle =
    TextStyle(fontFamily: 'fonts/Poppins-SemiBold.ttf');

const kMapPhotoUnitTextStyle =
    TextStyle(fontFamily: 'fonts/Poppins-Regular.ttf');

const kMapListTileTitle =
    TextStyle(fontFamily: 'fonts/Poppins-SemiBold.ttf', fontSize: 16.0);

const kMapListTileSubTitle = TextStyle(
  fontFamily: 'fonts/Poppins-Regular.ttf',
  fontSize: 12.0,
  color: Color(0xffD8D8D8),
);

//Details
const kDetailsPriceTextStyle = TextStyle(
    fontFamily: 'fonts/Poppins-SemiBold.ttf',
    color: Colors.white,
    fontSize: 14.0);

const kDetailsUnitTextStyle = TextStyle(
    fontFamily: 'fonts/Poppins-Regular.ttf',
    color: Colors.white,
    fontSize: 12.0);

const kDetailsTitleTextStyle =
    TextStyle(fontFamily: 'fonts/Poppins-SemiBold.ttf', fontSize: 21.0);

const kDetailsSubTitle = TextStyle(
  fontFamily: 'fonts/Poppins-Regular.ttf',
  fontSize: 12.0,
  color: Color(0xffD8D8D8),
);

const kDetailsBodyTextStyle =
    TextStyle(fontFamily: 'fonts/Poppins-Regular.ttf', fontSize: 12.0);

const kDetailsAmenitiesTextStyle =
    TextStyle(fontFamily: 'fonts/Poppins-SemiBold.ttf', fontSize: 14.0);

const kDetailsCardTextStyle =
    TextStyle(fontFamily: 'fonts/Poppins-Medium.ttf', fontSize: 12.0);
const kDetailsButtonTextStyle =
    TextStyle(fontFamily: 'fonts/Poppins-Medium.ttf', color: Colors.white);

//another
ButtonStyle kElevatedButtonStyle(Color primary, Color onPrimary) {
  return ElevatedButton.styleFrom(
    primary: primary,
    onPrimary: onPrimary,
    shape: const StadiumBorder(),
  );
}

BoxShadow kBubbleShadowStyle() {
  return const BoxShadow(
    color: Colors.grey,
    offset: Offset(0, 15),
    blurRadius: 30.0,
    spreadRadius: -10,
  );
}

BoxShadow kBottomModalShadowStyle() {
  return BoxShadow(
    color: Colors.grey.shade300,
    offset: const Offset(0, 5),
    blurRadius: 70.0,
    spreadRadius: 0,
  );
}

LinearGradient kBubbleGradient(Color topLeftColor, Color bottomRightColor) {
  return LinearGradient(
      begin: FractionalOffset.topCenter,
      end: FractionalOffset.bottomCenter,
      colors: [
        topLeftColor,
        bottomRightColor,
      ],
      stops: const [
        0.0,
        1.0,
      ]);
}
