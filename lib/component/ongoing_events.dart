import 'package:flutter/material.dart';
import 'package:ngabuburit/theme.dart';

class OngoingEvents extends StatelessWidget {
  final String title;
  final String location;
  final String images;
  OngoingEvents({
    Key? key,
    required this.title,
    required this.location,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 230,
          height: 205,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(images),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: whiteColor,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      location,
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
