import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textColor;
  final bool bIsSimple;
  final String logo;
  final Color borderColor;
  final double borderWidth;
  final double textFontSize;

  CustomButton({
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.bIsSimple,
    required this.logo, // Default logo, you can change it
    required this.borderColor,
    required this.borderWidth,
    required this.textColor,
    required this.textFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: bIsSimple ? _buildSimpleButton() : _buildComplexButton(),
    );
  }

  Widget _buildSimpleButton() {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: textFontSize,
        ),
      ),
    );
  }

//This is the method for creating the
  Widget _buildComplexButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          logo,
          height: 10,
          width: 10,
        ),
        _buildSimpleButton()
      ],
    );
  }
}
