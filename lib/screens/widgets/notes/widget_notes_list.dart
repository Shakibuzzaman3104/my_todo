import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/utils/colors_constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WidgetNotesList extends StatelessWidget {
  final SizingInformation sizeInfo;

  WidgetNotesList({this.sizeInfo});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 6),
              width: sizeInfo.screenSize.width * .3,
              child: Card(
                color: ColorConstants.BUTTON_COLOR,
                elevation: 0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark_border),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Text(
                      "Title",
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.white,
                    ),
                    Text(
                      "Hello",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
