import 'package:flutter/material.dart';
import './model/kampus_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.kampus,
    required this.isDone,
    required this.onCheckboxClick,
  });

  final Kampus kampus;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: ListTile(
        leading: Container(
          width: 100,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              //pakai image asset
              image: AssetImage(kampus.banner),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(kampus.nama),
        subtitle: Text(kampus.alamat),
        trailing: Checkbox(
          checkColor: Colors.blueAccent,
          value: isDone,
          onChanged: onCheckboxClick,
        ),
      ),
    );
  }
}
