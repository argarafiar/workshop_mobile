import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/kampus_model.dart';
import './listitemview.dart';
import './detailkampus.dart';
import './provider/done_kampus_provider.dart';

class ListKampusView extends StatefulWidget {
  const ListKampusView({
    super.key,
    // required this.doneKampusList,
  });

  // final List<Kampus> doneKampusList;

  @override
  State<ListKampusView> createState() => _ListKampusViewState();
}

class _ListKampusViewState extends State<ListKampusView> {
  // final List<Kampus> doneKampusList;

  // _ListKampusViewState(this.doneKampusList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kampus.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailkampusView(
                    data: kampus[index],
                  );
                },
              ),
            );
          },
          child: Consumer<DoneKampusProvider>(
            builder: (context, DoneKampusProvider data, widget) {
              return ListItem(
                kampus: kampus[index],
                isDone: data.doneKampusList.contains(kampus[index]),
                onCheckboxClick: (bool? value) {
                  data.complete(kampus[index], value!);
                  // setState(
                  //   () {
                  //     if (value != null) {
                  //       value
                  //           ? doneKampusList.add(kampus[index])
                  //           : doneKampusList.remove(kampus[index]);
                  //     }
                  //   },
                  // );
                },
              );
            },
          ),
          //
        );
      },
    );
  }
}
