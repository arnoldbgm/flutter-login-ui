import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class ParkingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff072531),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    kColorPrimaryParking,
                    kColorSecondayParking,
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Start First Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Parkin",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "24° C",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.asset(
                              'assets/images/cloudy.png',
                              width: 22.0,
                            )
                          ],
                        )
                      ],
                    ),
                    // End First Row
                    const SizedBox(
                      height: 18,
                    ),
                    //Start Main Text
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: Text(
                        "Let's find a place for you",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // End Main Text
                    const SizedBox(
                      height: 15,
                    ),
                    // Start Navbar
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Find parking place",
                              hintStyle: GoogleFonts.montserrat(
                                  color: Color(0xffC4C8CF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Color(0xffC4C8CF),
                                size: 23.0,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffFDC403),
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color(0xffF8C502),
                                Color(0xffFCCA04),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Parking Near You",
                        style: GoogleFonts.montserrat(
                          color: kColorPrimaryParking,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "View More",
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF8C502),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xffF8C502),
                            size: 16.0,
                          )
                        ],
                      )
                    ],
                  ),
                  //Start Card
                  const SizedBox(
                    height: 22.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                        ItemSliderWidget(),
                      ],
                    ),
                  ),
                  //End Card
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "History Parking",
                    style: GoogleFonts.montserrat(
                      color: kColorPrimaryParking,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  ItemListCard(),
                  const SizedBox(height: 12.0,),
                  ItemListCard(),
                  
                  const SizedBox(height: 12.0,),
                  ItemListCard(),
                  const SizedBox(height: 12.0,),
                  ItemListCard(),
                  const SizedBox(height: 12.0,),
                  ItemListCard(),
                  const SizedBox(height: 12.0,),
                  ItemListCard(),
                  const SizedBox(height: 12.0,),
                  ItemListCard(),
                  const SizedBox(height: 12.0,),
                  ItemListCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemListCard extends StatelessWidget {
  const ItemListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 12.0,
            color: Colors.black.withOpacity(0.07),
            offset: Offset(4, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/car.png',
              scale: 2.2,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blok A Sarimi",
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                        color: kColorPrimaryParking,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 3.5,
                  ),
                  Text(
                    "Desa Majumunduraman asdas",
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                        color: Colors.black.withOpacity(0.65),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 25,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "05, Sep 2021",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      color: Colors.black.withOpacity(0.65),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$30.00",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      color: Color(0xff52B096),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/maps.png'),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 10,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blok C Benyamin",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: kColorPrimaryParking,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "JL. Kita Berduam 223 22 alksjdhflkjahsdfklajshdflkasjdh",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: kColorPrimaryParking.withOpacity(0.55),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      "Open ",
                      style: GoogleFonts.montserrat(
                        color: Color.fromARGB(205, 40, 156, 63),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "05:00 - 22: 00 asdasd",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                          color: kColorPrimaryParking.withOpacity(0.45),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
