import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  final List<Map<String, dynamic>> _pages = [
    {
      "page": const CategorieScreen(),
      "title": "All Category",
    },
    {
      "page": const FavoriteScreen(),
      "title": "Favorites",
    },
  ];
  int _selectItem = 0;
  void _selectPage(int index) {
    setState(() {
      _selectItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectItem]["title"]),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectItem]["page"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectItem,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
