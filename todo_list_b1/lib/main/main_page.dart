import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> page = [];
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    page = [
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.white,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: page.elementAt(currentPage),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF363636),
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xFF8686E7), // Màu của mục được chọn
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPage,
          onTap: (index) {
            if (index == 2) {
              return;
            }
            setState(() {
              currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "asset/images/home-2.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
              activeIcon: Image.asset(
                "asset/images/home-2.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                color: Color(0xFF8686E7),
              ),
              label: "Index",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "asset/images/calendar.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
              activeIcon: Image.asset(
                "asset/images/calendar.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                color: Color(0xFF8686E7),
              ),
              label: "Calendar",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Container(),
              label: "",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "asset/images/clock.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
              activeIcon: Image.asset(
                "asset/images/clock.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                color: Color(0xFF8686E7),
              ),
              label: "Forcus",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "asset/images/user.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
              ),
              activeIcon: Image.asset(
                "asset/images/user.png",
                width: 24,
                height: 24,
                fit: BoxFit.fill,
                color: Color(0xFF8686E7),
              ),
              label: "User",
              backgroundColor: Colors.transparent,
            )
          ]),
      floatingActionButton: Container(
        width: 58,
        height: 58,
        decoration: BoxDecoration(
            color: Color(0xFF8687E7), borderRadius: BorderRadius.circular(32)),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
