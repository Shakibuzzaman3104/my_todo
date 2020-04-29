import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mynotes/utils/route_constants.dart';
import 'package:mynotes/views/main_view.dart';
import 'package:mynotes/views/view_checklist_details.dart';
import 'package:mynotes/views/view_notes_details.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => MainView());
      case RoutePaths.CHECKLIST_DETAILS:
        return MaterialPageRoute(builder: (_) => ChecklistDetailsView());
      case RoutePaths.NOTES_DETAILS:
       // var post = settings.arguments as Post;
        return MaterialPageRoute(builder: (_) => NotesDetailsView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
