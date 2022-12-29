import 'package:flutter/material.dart';
import 'package:ngabuburit/component/location_kategori.dart';
import 'package:ngabuburit/component/ongoing_events.dart';
import 'package:ngabuburit/component/popular_countries.dart';
import 'package:ngabuburit/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isColor = false;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 5, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/bimo.png",
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Bimo,",
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            "Good Morning",
                            style: subtitleTextStyle,
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.search,
                        color: whiteColor,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    "Let’s enjoy your \nVacation",
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        LocationKategori(title: "All", isColor: true),
                        LocationKategori(title: "Asia", isColor: false),
                        LocationKategori(title: "America", isColor: false),
                        LocationKategori(title: "Africa", isColor: false),
                        LocationKategori(title: "Europe", isColor: false),
                        LocationKategori(title: "North", isColor: false),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    right: 30,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Popular Countries",
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "See All",
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/details");
                        },
                        child: PopularCountries(
                          title: "Bali",
                          images: "assets/images/bali.png",
                        ),
                      ),
                      PopularCountries(
                        title: "Paris",
                        images: "assets/images/paris.png",
                      ),
                      PopularCountries(
                        title: "England",
                        images: "assets/images/england.png",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    right: 30,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Ongoing Events",
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "See All",
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      OngoingEvents(
                        title: "Rio Carnival, Rio \nde Janiro",
                        location: "Brazil",
                        images: "assets/images/brazil.png",
                      ),
                      OngoingEvents(
                        title: "Sapporo Snow \nFestival",
                        location: "Japan",
                        images: "assets/images/japan.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
