import 'package:almotamayez/core/helper/functions/try_catch.dart';
import 'package:flutter/material.dart';

import '../core/helper/functions/navigation_service.dart';
import '../data/remote/remote_data.dart';

export 'package:provider/provider.dart';

class XProvider extends ChangeNotifier {
  int count = 0;
  final data =
      Provider.of<RemoteData>(NavigationService.context, listen: false);

  addCount() {
    count++;
    notifyListeners();
  }

  Future<void> get getData async {
    tryCatch(() async {
      // await data.login();
    });
    notifyListeners();
  }
}
