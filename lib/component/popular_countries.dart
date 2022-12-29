import 'package:flutter/material.dart';
import 'package:ngabuburit/theme.dart';

class PopularCountries extends StatelessWidget {
  final String title;
  final String images;
  PopularCountries({
    Key? key,
    required this.title,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 160,
              decoration: BoxDecoration(
                color: yellowColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(images),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      title,
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                        color: backgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
