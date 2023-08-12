import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportPage extends StatelessWidget {
  const SportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.notifications_none),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Hello Manuel",
                  style: GoogleFonts.poppins(),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    height: 230.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.pexels.com/photos/703012/pexels-photo-703012.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        ),
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.9)
                              ],
                              stops: [0.5, 1.0],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Mulai vbberalohraga dan\nmencari teman bersama",
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Presiona el boton"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.pink,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0))),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categorias",
                      style: GoogleFonts.poppins(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Lihat Semua",
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  children: [
                    ItemGridWidget(
                      urlImage: 'assets/icons/swimming.png',
                      nameItem: 'Swimming',
                    ),
                    ItemGridWidget(
                      urlImage: 'assets/icons/football.png',
                      nameItem: 'Football',
                    ),
                    ItemGridWidget(
                      urlImage: 'assets/icons/boxing.png',
                      nameItem: 'Boxing',
                    ),
                    ItemGridWidget(
                      urlImage: 'assets/icons/basketball.png',
                      nameItem: 'Basketball',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  "Bookin terfavorit",
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 350,
                        height: 120,
                        color: Colors.red,
                        child: Column(children: [
                          Text(
                            "🚅 Soccer Attemp",
                            style: GoogleFonts.poppins(
                              fontSize: 14.0
                              ,fontWeight: FontWeight.w500
                            ),
                          ),

                        ]),
                      ),
                      Container(
                        width: 350,
                        height: 120,
                        color: Colors.blue,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemGridWidget extends StatelessWidget {
  String urlImage;
  String nameItem;

  ItemGridWidget({required this.urlImage, required this.nameItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(4, 4),
            )
          ]),
      child: Row(
        children: [
          Image.asset(this.urlImage),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            this.nameItem,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 13.5,
            ),
          )
        ],
      ),
    );
  }
}
