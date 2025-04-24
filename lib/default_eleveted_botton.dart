import 'package:flutter/material.dart';

class DefaultElevetedBotton extends StatelessWidget {
  const DefaultElevetedBotton({
    super.key,
    required this.bacgroundColor,
    required this.forroundColor,
    required this.text,
    required this.hasBorder,
  });
  final Color bacgroundColor;
  final Color forroundColor;
  final String text;
  final bool hasBorder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .44,
      height: MediaQuery.sizeOf(context).height * .05,
      child: ElevatedButton(
        onPressed: () {},
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
