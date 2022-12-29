import 'package:flutter/material.dart';
import 'package:ngabuburit/theme.dart';

class ItemsInfo extends StatelessWidget {
  final String title;
  final String icons;
  ItemsInfo({
    Key? key,
    required this.title,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(icons),
              opacity: 1.0,
              scale: 1.0,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
