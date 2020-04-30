import 'package:flutter/material.dart';
import 'package:mynotes/models/model_notes.dart';
import 'package:mynotes/screens/base_widget.dart';
import 'package:mynotes/viewmodel/viewmodel_notes.dart';
import 'package:provider/provider.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<ViewModelNotes>(
        onValueReady: (model) => model.fetchNotes(),
        value: ViewModelNotes(api: Provider.of(context)),
        builder: (ctx, model, child) => Container(
              child: Column(
                children: <Widget>[
                  model.busy
                      ? CircularProgressIndicator()
                      : Text("${model.notes.length}"),
                  MaterialButton(
                    child: Text("Insert Data"),
                    onPressed: () {
                      model.addNote(ModelNotes(
                          dateTime: DateTime.now().toString(),
                          title: "Test",
                          reminder: 0,
                          reminderDatetime: DateTime.now().toString()));
                    },
                  )
                ],
              ),
            ));
  }
}
