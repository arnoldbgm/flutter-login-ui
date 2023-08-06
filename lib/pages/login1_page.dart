import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Login1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimaryLogin,
      body: Stack(
        children: [
          //Liston de verde
          Stack(
            children: [
              Positioned(
                left: 40,
                top: -40,
                child: Transform.rotate(
                  angle: -pi / 3, //Aqui trabajamos con radianes
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      color: kColorSecondaryLogin,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kColorSecondaryLogin.withOpacity(0.16),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/bx-home-alt.svg',
                        colorFilter: ColorFilter.mode(
                          kColorSecondaryLogin,
                          BlendMode.srcIn,
                        ),
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 34.0,
                    ),
                    Text(
                      "Let's log you in",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Welcome back you've been missed!",
                      style: GoogleFonts.poppins(
                          color: Colors.white38,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    //Butons Google and Facebook
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffEA4335),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bxl-google.svg',
                              colorFilter: ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                              height: 17.0,
                            ),
                            label: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14.0),
                                child: Text("Google")),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff1877F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bxl-facebook.svg',
                              colorFilter: ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                              height: 17.0,
                            ),
                            label: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14.0),
                                child: Text("Facebook")),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        //Padding del contentido
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        //Cambio de color del placeholder
                        hintText: "Username",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14.0,
                            color: Colors.white60,
                            fontWeight: FontWeight.w500),
                        //Para activar el cambio de color del input
                        filled: true,
                        fillColor: Color(0xff25283A),
                        //Bordes del textfield
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        //Padding del contentido
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        //Cambio de color del placeholder
                        hintText: "Email Address",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14.0,
                            color: Colors.white60,
                            fontWeight: FontWeight.w500),
                        //Para activar el cambio de color del input
                        filled: true,
                        fillColor: Color(0xff25283A),
                        //Bordes del textfield
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        //Padding del contentido
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        //Cambio de color del placeholder
                        hintText: "Password",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14.0,
                            color: Colors.white60,
                            fontWeight: FontWeight.w500),
                        //Para activar el cambio de color del input
                        filled: true,
                        fillColor: Color(0xff25283A),
                        //Bordes del textfield
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      height: 54.0,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Sing Up"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kColorSecondaryLogin,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0))),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an Acount?",
                          style: GoogleFonts.poppins(
                              color: Colors.white38,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 9.5,),
                        Text(
                          "Sing In",
                          style: GoogleFonts.poppins(
                            color: Color(0xff1877F2),
                            fontWeight: FontWeight.w500
                          ),
                        )
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
