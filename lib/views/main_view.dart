import 'package:flutter/material.dart';
import 'package:mynotes/utils/colors_constants.dart';
import 'package:mynotes/widgets/bottom_appbar.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: WidgetBottomNavBar(),
    );
  }
}
