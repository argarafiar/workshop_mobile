import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/minggu3_controller.dart';

class Minggu3View extends GetView<Minggu3Controller> {
  const Minggu3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampus Surabaya'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/500/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Universitas Airlangga"),
              subtitle: Text("Jl. Airlangga No. 4, Surabaya"),
              onTap: () {},
            ),
            ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/500/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Universitas Airlangga"),
              subtitle: Text("Jl. Airlangga No. 4, Surabaya"),
              onTap: () {},
            ),
            ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/500/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Universitas Airlangga"),
              subtitle: Text("Jl. Airlangga No. 4, Surabaya"),
              onTap: () {},
            ),
            ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/500/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Universitas Airlangga"),
              subtitle: Text("Jl. Airlangga No. 4, Surabaya"),
              onTap: () {},
            ),
            ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/500/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Universitas Airlangga"),
              subtitle: Text("Jl. Airlangga No. 4, Surabaya"),
              onTap: () {},
            ),
            ListTile(
              leading: Container(
                width: 100,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/500/200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text("Universitas Airlangga"),
              subtitle: Text("Jl. Airlangga No. 4, Surabaya"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
