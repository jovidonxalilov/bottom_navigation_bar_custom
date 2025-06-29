import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationIconButton extends StatelessWidget {
  const BottomNavigationIconButton({
    super.key,
    required this.title,
    required this.svg, this.style,
  });

  final String title, svg;
  final TextStyle? style;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 1,
      children: [
        SvgPicture.asset(
          svg,
          width: 32,
          height: 32,
          fit: BoxFit.cover,
        ),
        Text(
          title,
          style: style ?? TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
