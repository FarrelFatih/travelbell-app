import 'package:app_travel/constant/color_style.dart';
import 'package:app_travel/page/accountpage/account_page.dart';
import 'package:app_travel/page/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  final pages = [
    HomePage(),
    AccountPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: green1Color,
          unselectedItemColor: green2Color,
          iconSize: 40,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: 'Account',
            ),
          ],
          showUnselectedLabels: false,
          unselectedLabelStyle: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: green2Color,
            ),
          ),
          selectedLabelStyle: GoogleFonts.inter(
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: green1Color,
            ),
          ),
        ),
      ),
    );
  }
}
