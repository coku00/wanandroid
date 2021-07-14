import 'package:flutter/foundation.dart';

class BaseViewModel with ChangeNotifier, DiagnosticableTreeMixin {
  RefreshStatus _status = RefreshStatus.complete;

  RefreshStatus get status => _status;

  set status(value) {
    this._status = value;
    notifyListeners();
  }
}

enum RefreshStatus { refresh, loading, complete }
