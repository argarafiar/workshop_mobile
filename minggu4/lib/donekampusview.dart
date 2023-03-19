import 'package:flutter/material.dart';
import './model/kampus_model.dart';
import 'package:provider/provider.dart';
import './provider/done_kampus_provider.dart';
import './detailkampus.dart';

class DoneKampusView extends StatelessWidget {
  const DoneKampusView({
    super.key,
    // required this.kampuslist,
  });
  // final List<Kampus> kampuslist;

  @override
  Widget build(BuildContext context) {
    final List<Kampus> doneKampusList =
        Provider.of<DoneKampusProvider>(context, listen: false).doneKampusList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampus Telah Dikunjungi'),
        centerTitle: true,
      ),
      //====================================================================== PROVIDER
      // body: ListView.builder(
      //   itemCount: doneKampusList.length,
      //   itemBuilder: (context, index) {
      //     final Kampus kampus = doneKampusList[index];
      //     return Card(
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text(kampus.nama),
      //           Icon(Icons.done_outline),
      //         ],
      //       ),
      //     );
      //   },
      // ),

      //====================================================================== TUGAS
      body: ListView.builder(
        itemCount: doneKampusList.length,
        itemBuilder: (context, index) {
          final Kampus kampus = doneKampusList[index];
          return Card(
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
              trailing: const Icon(Icons.done_outline),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailkampusView(
                        data: kampus,
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
