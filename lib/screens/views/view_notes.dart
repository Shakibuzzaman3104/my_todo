import 'package:flutter/material.dart';
import 'package:mynotes/models/model_notes.dart';
import 'package:mynotes/screens/base_widget.dart';
import 'package:mynotes/screens/widgets/notes/widget_notes_list.dart';
import 'package:mynotes/viewmodel/viewmodel_notes.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<ViewModelNotes>(
        onValueReady: (model) => model.fetchNotes(),
        value: ViewModelNotes(api: Provider.of(context)),
        builder: (ctx, model, child) => ResponsiveBuilder(
              builder: (ctx, sizeInfo) => Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      height: sizeInfo.screenSize.height * .05,
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Notes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: sizeInfo.screenSize.height * .06,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text("Pinned",style: TextStyle(fontSize: 24),),
                    ),
                    Container(
                      child: WidgetNotesList(
                        sizeInfo: sizeInfo,
                      ),
                      height: sizeInfo.screenSize.height * .25,
                    ),
                    SizedBox(
                      height: sizeInfo.screenSize.height * .06,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text("All",style: TextStyle(fontSize: 24),),
                    ),
                    Container(
                      child: WidgetNotesList(
                        sizeInfo: sizeInfo,
                      ),
                      height: sizeInfo.screenSize.height * .25,
                    ),

                  ],
                ),
              ),
            ));
  }
}
