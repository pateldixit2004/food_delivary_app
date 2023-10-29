import 'package:flutter/material.dart';
import 'package:food_delivary_app/splesh_screen/provider/splesh_provider.dart';
import 'package:provider/provider.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  SpleshProvider? providerF;
  SpleshProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<SpleshProvider>(context, listen: false);
    providerT = Provider.of<SpleshProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "",
                activeIcon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: "",
                activeIcon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          ],
          onTap: (value) {
            providerF?.changeScreen(value);
          },
          currentIndex: providerT!.i,
          selectedIconTheme: const IconThemeData(color: Colors.orangeAccent),
        ),
        body: providerF!.screenList[providerT!.i],
      ),
    );
  }

  Widget x() {
    return Center(
      child: Positioned.fill(
          bottom: 50,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow[700],
              ),
              child: Align(
                  child: Text(
                "Follow",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )),
    );
  }
}
