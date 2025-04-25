import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle get title => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: min(14.sp, 18),
    fontFamily: 'Poppins',
  );

  static TextStyle get subTitle => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: min(14.sp, 20),
    fontFamily: 'Poppins',
    color: Colors.grey.shade600,
  );
}
