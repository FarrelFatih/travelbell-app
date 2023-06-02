import 'package:app_travel/constant/color_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class booking_widget extends StatefulWidget {
  const booking_widget({super.key});

  @override
  State<booking_widget> createState() => _booking_widgetState();
}

class _booking_widgetState extends State<booking_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 270,
      width: 500,
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.2,
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              height: 43,
              width: 500,
              decoration: BoxDecoration(
                color: green1Color,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.stars_outlined,
                    color: Colors.yellow[300],
                    size: 27,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Activate TravelBell Priority',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: whiteColor,
                    size: 29,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.map_outlined,
                    size: 35,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 230,
                    height: 33,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Hotel in your area",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.zoom_out_map_outlined,
                    size: 33,
                    color: green1Color,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 33,
                            color: Colors.grey,
                          ),
                          Container(
                            width: 120,
                            height: 35,
                            padding: EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: '27 May 2023',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(left: 42),
                        child: Text(
                          'Check-out: 28 May 2023',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        width: 90,
                        height: 35,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: '1 Night',
                            hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text(
                          'Maks. 30 Nights',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    width: 90,
                    height: 45,
                    decoration: BoxDecoration(
                      color: green1Color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_list_sharp,
                          color: whiteColor,
                          size: 25,
                        ),
                        Text(
                          "Filter",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    width: 160,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.yellow[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Booking Now',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
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
