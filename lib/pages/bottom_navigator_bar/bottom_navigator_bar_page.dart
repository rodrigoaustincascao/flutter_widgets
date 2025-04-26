import 'package:flutter/material.dart';
import 'package:mao_na_massa/pages/bottom_navigator_bar/page1.dart';
import 'package:mao_na_massa/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({super.key});

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom NavigatorBar')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          print(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
        ],
      ),
      body: IndexedStack(index: _selectedIndex, children: [Page1(), Page2()]),
    );
  }
}
