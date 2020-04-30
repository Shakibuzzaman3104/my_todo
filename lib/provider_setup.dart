import 'package:mynotes/local_database/sqf_database.dart';
import 'package:mynotes/services/api.dart';
import 'package:mynotes/viewmodel/viewmodel_notes.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';


List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: DBHelper())
];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<DBHelper, Api>(
    update: (context, helper, api) =>
        Api(dbHelper: helper),
  ),
  ProxyProvider<Api, ViewModelNotes>(
    update: (context, api, notes) =>
        ViewModelNotes(api: api),
  )
];

/*List<SingleChildWidget> uiConsumableProviders = [
  StreamProvider<User>(
    builder: (context) => Provider.of<AuthenticationService>(context, listen: false).user,
  )
];*/
