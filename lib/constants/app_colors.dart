import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color transparent = Colors.transparent;

  static const Color black = Colors.black;

  static const Color text = Color(0xff18191d);

  static const Color text2 = Color(0xff35383F);

  static const Color text3 = Color(0xff18191D);

  static const Color subText = Color(0xff4c5a80);

  static const Color red = Color(0xfffe506b);

  static const Color primary2 = Color(0xffF27772);

  static const Color primary = Color(0xff430E0C);

  static const Color secondary = Color(0xffEDDDE5);

  static const Color border = Color(0xffe4e4e4);

  static const Color white = Color(0xffffffff);

  static const Color background = Color(0xfff5f6fa);

  static const Color red2 = Color(0xffff6161);

  static const Color lightBlue = Color(0xffedf3fc);

  static const Color green = Color(0xff018934);

  static const Color orange = Color(0xfffb641b);

  static const Color reddishOrange = Color(0xffFFE8DB);

  static const Color ebonyClay = Color(0xff252839);

  static const Color lightGrey = Color(0xffD8DADC);

  static const Color greyTextColor = Color(0xff9E9E9E);

  static const Color cinder = Color(0xff121418);

  static const Color navy = Color(0xff041D42);

  static const Color border2 = Color(0xffCFCBCB);

  static const Color border3 = Color(0xffCDCDCD);

  static const Color greyButtonColor = Color(0xffEEF1F5);

  static const Color blueZodiac = Color(0xff1C274C);

  static const Color softPeach = Color(0xffEFEFEF);

  static const Color davyGrey = Color(0xff545454);

  static const Color boulder = Color(0xff757575);

  static const Color platinum = Color(0xffE2E2E2);

  static const Color tealishBlue = Color(0xff276EF1);

  static const Color shimmerBg = Color(0xffe5e7eb);

  static const Color shimmerColor = Color(0xeeffffff);

  static const Color rangoonGreen = Color(0xff1C1C1C);

  static const shimmerGradient = LinearGradient(
    colors: [
      shimmerBg,
      shimmerColor,
      shimmerBg,
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1, -0.3),
    end: Alignment(1, 0.3),
  );
}
