import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultElevetedBotton extends StatelessWidget {
  const DefaultElevetedBotton({
    super.key,
    required this.bacgroundColor,
    required this.forroundColor,
    required this.text,
    required this.hasBorder,
    required this.onPressed,
  });
  final Color bacgroundColor;
  final Color forroundColor;
  final String text;
  final bool hasBorder;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 181.w,
      height: 44.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bacgroundColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side:
                hasBorder
                    ? const BorderSide(color: Colors.black, width: 1.5)
                    : BorderSide.none,
          ),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: forroundColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
