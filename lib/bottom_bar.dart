import 'package:flutter/material.dart';
import 'package:roomdetails/search_screen.dart';
import 'package:roomdetails/textpage.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Stack(
        children: [
          const SearchScreen(),
          const TextPage(),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), label: "Favorites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
