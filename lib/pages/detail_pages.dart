import 'package:flutter/material.dart';
import 'package:ngabuburit/component/items_info.dart';
import 'package:ngabuburit/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: description,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 2 / 3.6,
                  left: 30,
                  right: 30,
                  bottom: 30,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bali, Indonesia",
                      style: primaryTextStyle.copyWith(
                        color: yellowColor,
                        fontSize: 24,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ItemsInfo(
                          title: "4.92",
                          icons: "assets/icons/start.png",
                        ),
                        ItemsInfo(
                          title: "27 C",
                          icons: "assets/icons/cloud.png",
                        ),
                        ItemsInfo(
                          title: "9 Jam",
                          icons: "assets/icons/airplane.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 485,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/bali2.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Bali is famous for beaches, countless waves for surfing scuba diving, netiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and mafnificent temples gifted artists the producing.",
                  style: subtitleTextStyle,
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 90,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            color: backgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Starting From",
                      style: primaryTextStyle,
                    ),
                    Text(
                      "\$500 - 750",
                      style: primaryTextStyle.copyWith(
                        color: yellowColor,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: yellowColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Book Now",
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
