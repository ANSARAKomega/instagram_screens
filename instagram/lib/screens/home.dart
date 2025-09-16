import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Text("data"),
    Text("Data"),
    Text("data"),
    Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              "assets/svg/Home.svg",
              width: 22,
              height: 23.38,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              "assets/svg/Search.svg",
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/svg/Add.svg", width: 23.5, height: 23.5),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              "assets/svg/Like.svg",
              width: 23.66,
              height: 20.58,
            ),
          ),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
