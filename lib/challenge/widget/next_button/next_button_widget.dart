import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  String label;
  Color backGroundColor;
  Color fontColor;
  Color borderColor;

  final VoidCallback onTap;

  // NextButtonWidget(
  //     {Key? key,
  //     required this.label,
  //     required this.backGroundColor,
  //     required this.fontColor})
  //     : super(key: key);

  NextButtonWidget.primary({required this.label, required this.onTap})
      : this.backGroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.darkGreen;

  NextButtonWidget.secondary({required this.label, required this.onTap})
      : this.backGroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border;

  NextButtonWidget.tertiary({required this.label, required this.onTap})
      : this.backGroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.border;
  NextButtonWidget.tertiaryWithoutBorder(
      {required this.label, required this.onTap})
      : this.backGroundColor = Colors.transparent,
        this.fontColor = AppColors.purple,
        this.borderColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backGroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: borderColor,
              ),
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
