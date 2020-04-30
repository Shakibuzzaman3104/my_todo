import 'package:flutter/cupertino.dart';
import 'package:mynotes/models/model_notes.dart';
import 'package:mynotes/services/api.dart';
import 'package:mynotes/viewmodel/base_view_model.dart';

class ViewModelNotes extends BaseViewModel {
  Api _api;

  ViewModelNotes({
    @required Api api,
  }) : _api = api;

   List<ModelNotes> notes;
  Future fetchNotes() async {
    setBusy(true);
    this.notes = await _api.getNotes();
    setBusy(false);
  }

  Future<int> addNote(ModelNotes modelNotes) async {
    var response =  await _api.addNote(modelNotes);
    fetchNotes();
    return response;
  }

  @override
  void dispose() {
    print('I have been disposed!!');
    super.dispose();
  }
}
