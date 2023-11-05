import 'package:flutter/material.dart';
import 'package:nahandroko/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/home_page.dart';

class DetailsScreen extends StatefulWidget {
  final int index;
  final String name, image, prix, fangarony,lasary, time, fikarakarana ;
  final bool tags;
  DetailsScreen(this.index, this.name, this.image, this.fikarakarana, this.prix, this.time, this.fangarony,this.lasary, this.tags);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,

      //------------------------------------------------------------------------
      // Text en bas
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.only(right: 40, left: 40, bottom: 20),
          height: 50.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: kYellowColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(28.0),
                topLeft: Radius.circular(28.0),
                bottomLeft: Radius.circular(28.0),
                bottomRight: Radius.circular(28.0),
              )),
          child: Text(
            "NAHANDRO",
            style:  GoogleFonts.poppins(
              fontSize: 20.0,
              color: kLightColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),

      //------------------------------------------------------------------------
      // Contenue de page

      // Icon
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 64.0,
            left: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 28.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/list.svg",
                        height: 34.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => print("Ajout plats"),
                      child: SvgPicture.asset(
                        "assets/icons/add.svg",
                        height: 34.0,
                      ),
                    ),
                  ],
                ),
              ),

              //------------------------------------------------------------------------
              // Titre et nom

              const SizedBox(height: 13.0),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                child: Text(
                  widget.name,
                  style: GoogleFonts.poppins(
                    fontSize: 44.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              //------------------------------------------------------------------------
              // Titre et nom

              SizedBox(height: 1.0),

              Container(
                child: Row(
                  children: [
                    Text(
                        "ar",
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          color: kYellowColor,
                          fontWeight: FontWeight.w700,
                        )
                    ),
                    const SizedBox(width: 10.0,),
                    Text(
                        widget.prix,
                        style: GoogleFonts.poppins(
                          fontSize: 25.0,
                          color: kYellowColor,
                          fontWeight: FontWeight.w700,
                        )
                    ),
                  ],
                ),
              ),
              //------------------------------------------------------------------------
              // Image

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 325,
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        bottom: 27.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                const SizedBox(height: 40.0),
                                Text(
                                  "Fangarony",
                                  style: GoogleFonts.poppins(
                                    fontSize: 11.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 1.5),
                                Text(
                                  widget.fangarony,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    color: kDarkColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 25.0),
                                Text(
                                  "Fotoana",
                                  style: GoogleFonts.poppins(
                                    fontSize: 11.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 1.5),
                                Text(
                                  widget.time,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    color: kDarkColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 25.0),
                                Text(
                                  "Lasary",
                                  style: GoogleFonts.poppins(
                                    fontSize: 11.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 1.5),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    widget.lasary,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      color: kDarkColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            height: 230,
                            width: 350,
                            padding: const EdgeInsets.only(
                              top: 25.0,
                              bottom: 25.0,
                              right: 25.0,
                              left: 50.0,
                            ),
                            decoration:  BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50)),
                              border: Border.all(
                                color: kLightColor,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(-8, 12),
                                  spreadRadius: 0,
                                  blurRadius: 17,
                                  color: Color.fromRGBO(155, 155, 155, 1),
                                )

                              ]
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: SizedBox.fromSize(
                                child: Hero(
                                  tag: widget.tags
                                      ? "favori${widget.index}"
                                      : "general${widget.index}",
                                  child: Image.asset(
                                    widget.image,
                                    height: 150.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //------------------------------------------------------------------------
              // Description du plats

              const SizedBox(
                height: 10.0,
              ),
              Text(
                "fikarakarana",
                style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),

              //------------------------------------------------------------------------
              // Description du plats
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0, bottom: 28.0),
                child: Text(
                  widget.fikarakarana,
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
