import 'package:flutter/material.dart';
import 'package:mynotes/provider_setup.dart';
import 'package:mynotes/screens/widgets/bottom_appbar.dart';
import 'package:mynotes/utils/colors_constants.dart';
import 'package:provider/provider.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: Scaffold(
        bottomNavigationBar: WidgetBottomNavBar(),
      ),
    );
  }
}
