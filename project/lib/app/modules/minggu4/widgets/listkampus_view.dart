import 'package:flutter/material.dart';

import '../../../data/models/kampus_model.dart';
import 'listitem_view.dart';

class ListKampusView extends StatelessWidget {
  final List<Kampus> doneKampusList;
  final List<Kampus> kampus;

  ListKampusView({required this.doneKampusList, required this.kampus});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kampus.length,
      itemBuilder: (context, index) {
        return StatefulBuilder(builder: (context, setState) {
          return ListItem(
            kampus: kampus[index],
            isDone: doneKampusList.contains(kampus[index]),
            onCheckboxClick: (bool? value) {
              setState(
                () {
                  if (value != null) {
                    value
                        ? doneKampusList.add(kampus[index])
                        : doneKampusList.remove(kampus[index]);
                  }
                },
              );
            },
          );
        });
      },
    );
  }
}
