import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/minggu4/views/listitem_view.dart';
import '../../../data/minggu3/kampus_model.dart';

class ListKampusView extends StatefulWidget {
  const ListKampusView({
    super.key,
    required this.doneKampusList,
  });

  final List<Kampus> doneKampusList;

  @override
  _ListKampusViewState createState() => _ListKampusViewState(doneKampusList);
}

class _ListKampusViewState extends State<ListKampusView> {
  final List<Kampus> doneKampusList;

  _ListKampusViewState(this.doneKampusList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kampus.length,
      itemBuilder: (context, index) {
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
      },
    );
  }
}
