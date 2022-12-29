import 'package:flutter/material.dart';
import 'package:ngabuburit/theme.dart';

class LocationKategori extends StatelessWidget {
  final String title;
  final bool isColor;

  LocationKategori({
    Key? key,
    required this.title,
    required this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Text(
        title,
        style: primaryTextStyle.copyWith(
          color: isColor == false ? whiteColor : yellowColor.withOpacity(0.6),
        ),
      ),
    );
  }
}
