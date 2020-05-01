import 'package:flutter/material.dart';
import 'package:mynotes/screens/views/settings_view.dart';
import 'package:mynotes/screens/views/view_checklist.dart';
import 'package:mynotes/screens/views/view_notes.dart';
import 'package:mynotes/utils/colors_constants.dart';

class WidgetBottomNavBar extends StatefulWidget {
  @override
  _WidgetBottomNavBarState createState() => _WidgetBottomNavBarState();
}

class _WidgetBottomNavBarState extends State<WidgetBottomNavBar> {
  final List<Map<String, Object>> _pages = [
    {
      'page': NotesView(),
      'title': 'Notes',
    },
    {
      'page': CheckListView(),
      'title': 'CheckList',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _settings() {
    print("Settings Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          return index < 2 ? _selectPage(index) : _settings();
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        backgroundColor: ColorConstants.TAB_COLOR,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor:ColorConstants.BUTTON_COLOR,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
