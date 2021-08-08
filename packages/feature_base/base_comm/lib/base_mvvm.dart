import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

abstract class BaseViewModel with ChangeNotifier, DiagnosticableTreeMixin {
  RefreshStatus _status = RefreshStatus.complete;

  RefreshStatus get status => _status;

  set status(value) {
    this._status = value;
    notifyListeners();
  }
}

class BaseState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
  }



}

enum RefreshStatus { refresh, loading, complete }
