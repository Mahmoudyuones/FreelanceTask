import 'package:flutter/material.dart';
import 'package:freelance_task/app_text.dart';

class DefaultElevetedBotton extends StatelessWidget {
  const DefaultElevetedBotton({
    super.key,
    required this.bacgroundColor,
    required this.forgroundColor,
    required this.text,
    required this.hasBorder,
    required this.onPressed,
  });
  final Color bacgroundColor;
  final Color forgroundColor;
  final String text;
  final bool hasBorder;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 181,
      height: 44,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bacgroundColor,
          foregroundColor: forgroundColor,
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
          style: AppTextStyles.title.copyWith(
            color: forgroundColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
