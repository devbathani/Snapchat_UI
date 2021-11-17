import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height;
    var screenW = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: screenH * 0.05,
          width: screenW * 0.11,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('profile/snap_1.png'), fit: BoxFit.cover),
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(screenW / 15),
          ),
        ),
        SizedBox(
          width: screenW * 0.02,
        ),
        Container(
          height: screenH * 0.05,
          width: screenW * 0.11,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(screenW / 15),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: screenW / 15,
              color: Colors.grey[700],
            ),
          ),
        ),
        SizedBox(
          width: screenW * 0.145,
        ),
        Text(
          "Chat",
          style: TextStyle(
              color: Colors.white,
              fontSize: screenW / 17.5,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: screenW * 0.145,
        ),
        Container(
          height: screenH * 0.05,
          width: screenW * 0.11,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(screenW / 15),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_add,
              size: screenW / 15,
              color: Colors.grey[700],
            ),
          ),
        ),
        SizedBox(
          width: screenW * 0.02,
        ),
        Container(
          height: screenH * 0.05,
          width: screenW * 0.11,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(screenW / 15),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: screenW / 15,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }
}
