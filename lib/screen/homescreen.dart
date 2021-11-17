import 'package:flutter/material.dart';
import 'package:snapchat_ui/bar/appbar.dart';
import 'package:snapchat_ui/bar/bottom_nav_bar.dart';
import 'package:snapchat_ui/model/chatmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height;
    var screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Appbar(),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: screenH / 50),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Container(
              height: screenH * 0.08,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenW / 25),
                    child: Container(
                      height: screenH * 0.05,
                      width: screenW * 0.11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenW / 15),
                        image: DecorationImage(
                          image: AssetImage(chats[index].profile),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenW * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chats[index].profilename,
                        style: TextStyle(
                            color: Colors.white, fontSize: screenW / 20),
                      ),
                      SizedBox(
                        height: screenH * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                            height: screenH * 0.013,
                            width: screenW * 0.023,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border:
                                    Border.all(width: 1.2, color: Colors.red)),
                          ),
                          SizedBox(
                            width: screenW * 0.01,
                          ),
                          Text(
                            chats[index].status,
                            style: TextStyle(
                                color: Colors.white54, fontSize: screenW / 25),
                          ),
                          SizedBox(
                            width: screenW * 0.03,
                          ),
                          Text(
                            chats[index].time,
                            style: TextStyle(
                                color: Colors.white54, fontSize: screenW / 25),
                          ),
                          SizedBox(
                            width: screenW * 0.03,
                          ),
                          Text(
                            chats[index].streak,
                            style: TextStyle(
                                color: Colors.white60, fontSize: screenW / 25),
                          ),
                          SizedBox(
                            width: screenW * 0.009,
                          ),
                          Container(
                            height: screenH * 0.02,
                            width: screenW * 0.03,
                            child: Image.asset(
                              'profile/streak.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white60,
                        size: screenW / 14,
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
