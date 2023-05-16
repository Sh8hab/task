import 'package:flutter/material.dart';
import 'package:task/view/products.dart';
import 'package:task/view/profile.dart';
import 'package:task/view/user_page.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  int _selectedIndex = 1;
  List pages = [const UserPage(), const Products(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "Users"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Product"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) => {
            setState(() {
              _selectedIndex = index;
            })
          },
        ));
  }
}
