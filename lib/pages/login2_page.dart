import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                right: -150,
                top: -150,
                child: MyCircleWidget(
                  radius: 200,
                  colors: [
                    Color(0xffED85B4),
                    Color(0xffDF5F99),
                  ],
                ),
              ),
              Positioned(
                left: -150,
                bottom: -225,
                child: MyCircleWidget(
                  radius: 200,
                  colors: [
                    Color(0xff8C79C9),
                    Color(0xff6752A4),
                  ],
                ),
              ),
              Positioned(
                right: 30,
                top: 275,
                child: MyCircleWidget(
                  radius: 20,
                  colors: [
                    Color(0xff8C79C9),
                    Color(0xff6752A4),
                  ],
                ),
              ),
              Positioned(
                right: -35,
                top: 600,
                child: SemiCircle(),
              ),
            ],
          )
          //Formulario
          ,
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xffDF5F99),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      height: 135,
                    ),
                    Text(
                      "Create your\nAccount!",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: 35,
                        color: Color(
                          0xff6752A4,
                        ),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff9C89D9),
                          ),
                          // Enabled Border
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff9C89D9),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff9C89D9),
                            ),
                          ),
                          //Padding del contentido
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          //Cambio de color del placeholder
                          hintText: "Username",
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black.withOpacity(0.55))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff9C89D9),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                          color: Color(0xff9C89D9),
                        ),
                        // Enabled Border
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9C89D9),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9C89D9),
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.55),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Text("Create Account"),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffE0689F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45)
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SemiCircle extends StatelessWidget {
  const SemiCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 30 * 2,
        width: 50 * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xff8C79C9),
              Color(0xff6752A4),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff6752A4).withOpacity(0.7),
              blurRadius: 12,
              offset: const Offset(2, 2),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  double radius;
  List<Color> colors;

  MyCircleWidget({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.radius * 2,
      width: this.radius * 2,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: colors[colors.length - 1].withOpacity(0.7),
            blurRadius: 12,
            offset: const Offset(2, 2),
          ),
        ],
      ),
    );
  }
}
