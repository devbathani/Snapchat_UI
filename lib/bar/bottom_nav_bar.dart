import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height;
    var screenW = MediaQuery.of(context).size.width;
    return SalomonBottomBar(
      currentIndex: _currentIndex,
      onTap: (i) {
        setState(() {
          _currentIndex = i;
        });  
      },
      unselectedItemColor: Colors.white,
      items: [
        SalomonBottomBarItem(
          icon: Icon(
            Icons.map,
            size: screenW / 15,
            // color: Colors.white,
          ),
          title: Text(
            "Snap Map",
            style: TextStyle(
                // color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenW / 20),
          ),
          selectedColor: Colors.green,
        ),
        SalomonBottomBarItem(
          icon: Icon(
            Icons.chat_bubble_outline,
            size: screenW / 15,
            // color: Colors.white,
          ),
          title: Text(
            "Chat",
            style: TextStyle(
                // color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenW / 20),
          ),
          selectedColor: Colors.blue,
        ),
        SalomonBottomBarItem(
          icon: Icon(
            Icons.camera,
            size: screenW / 15,
            // color: Colors.white,
          ),
          title: Text(
            "Cam",
            style: TextStyle(
                // color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenW / 20),
          ),
          selectedColor: Colors.yellow,
        ),
        SalomonBottomBarItem(
          icon: Icon(
            Icons.people_outline,
            size: screenW / 15,
            // color: Colors.white,
          ),
          title: Text(
            "Stories",
            style: TextStyle(
                // color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenW / 20),
          ),
          selectedColor: Colors.purpleAccent[400],
        ),
        SalomonBottomBarItem(
          icon: Icon(
            Icons.play_arrow_outlined,
            size: screenW / 15,
            // color: Colors.white,
          ),
          title: Text(
            "Spot",
            style: TextStyle(
                // color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenW / 20),
          ),
          selectedColor: Colors.red,
        ),
      ],
    );
  }
}
