import 'package:flutter/material.dart';
import 'package:mynotes/views/view_checklist.dart';
import 'package:mynotes/views/view_notes.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16, left: 16),
            alignment: Alignment.topLeft,
            child: Text(
              _pages[_selectedPageIndex]["title"],
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
              ),
            ),
          ),
          _pages[_selectedPageIndex]['page'],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
