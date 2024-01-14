import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wishbank/home.dart';
import 'package:wishbank/friends.dart';
import 'package:wishbank/setting.dart';

void main() {
  runApp(MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MarketPage(),
    );
  }
}

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Friends(),
    Setting(),
  ];

  Color getIconColor(int index) {
    switch (index) {
      case 0:
        return _selectedIndex == 0
            ? Color(0xff6F86E5) // Selected color for 'Home'
            : Color(0xffEFEFEF); // Unselected color for 'Home'
      case 1:
        return _selectedIndex == 1
            ? Color(0xff6F86E5) // Selected color for 'Home'
            : Color(0xffEFEFEF); // Unselected color for 'Friends'
      case 2:
        return _selectedIndex == 2
            ? Color(0xff6F86E5) // Selected color for 'Home'
            : Color(0xffEFEFEF); // Unselected color for 'Settings'
      default:
        return Colors.black;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SizedBox(height: 13),
                    SvgPicture.asset(
                      'assets/NavBar_images/home_icon.svg',
                      width: 24,
                      height: 24,
                      color: getIconColor(0),
                    ),
                    SizedBox(height: 6),
                  ],
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SizedBox(height: 13),
                    SvgPicture.asset(
                      'assets/NavBar_images/friends_icon.svg',
                      width: 24,
                      height: 24,
                      color: getIconColor(1),
                    ),
                    SizedBox(height: 6),
                  ],
                ),
                label: '친구',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    SizedBox(height: 13),
                    SvgPicture.asset(
                      'assets/NavBar_images/setting_icon.svg',
                      width: 24,
                      height: 24,
                      color: getIconColor(2),
                    ),
                    SizedBox(height: 6),
                  ],
                ),
                label: '설정',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xff6F86E5),
            unselectedItemColor: Color(0xffEFEFEF),
            showUnselectedLabels: true,
            backgroundColor: Colors.white,
            onTap: _onItemTapped,
            elevation: 0,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    //해당 클래스가 호출되었을떄
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
