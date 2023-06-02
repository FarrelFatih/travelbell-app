import 'package:app_travel/constant/color_style.dart';
import 'package:flutter/material.dart';

class StartBoard3 extends StatelessWidget {
  const StartBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              child: Text(
                "Lets find your beauty places right now",
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'loginPage');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: green1Color,
                      ),
                      child: Text(
                        "Start",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: (8),
                    ),
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
