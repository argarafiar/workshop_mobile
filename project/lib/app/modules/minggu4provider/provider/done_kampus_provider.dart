import 'package:flutter/foundation.dart';
import '../../../data/minggu3/kampus_model.dart';

class DoneKampusProvider extends ChangeNotifier {
  final List<Kampus> _doneKampusList = [];

  List<Kampus> get doneKampusList => _doneKampusList;

  void complete(Kampus kampus, bool isDone) {
    isDone ? _doneKampusList.add(kampus) : _doneKampusList.remove(kampus);
    notifyListeners();
  }
}
