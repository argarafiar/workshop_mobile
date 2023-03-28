import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/tambahkampus_controller.dart';

class EditkampusView extends GetView {
  EditkampusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    var controller = Get.put(TambahkampusController());

    late String nama = data['nama'],
        alamat = data['alamat'],
        bio = data['bio'],
        hari = data['hari'],
        jam_buka = data['jam_buka'],
        jam_tutup = data['jam_tutup'],
        tiket = data['tiket'],
        banner = data['banner'],
        foto1 = data['foto1'],
        foto2 = data['foto2'],
        foto3 = data['foto3'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Kampus'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: ListView(
          children: [
            //form nama
            TextFormField(
              initialValue: nama,
              decoration: const InputDecoration(
                labelText: "Nama Kampus",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                nama = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form alamat
            TextFormField(
              initialValue: data['alamat'],
              decoration: const InputDecoration(
                labelText: "Alamat Kampus",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                alamat = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form bio
            TextFormField(
              initialValue: data['bio'],
              decoration: const InputDecoration(
                labelText: "Bio Kampus",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                bio = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form hari dengan dropdown
            DropdownButtonFormField(
              decoration: const InputDecoration(
                labelText: "Hari",
                border: OutlineInputBorder(),
              ),
              items: [
                DropdownMenuItem(
                  child: const Text("Senin"),
                  value: "Senin",
                ),
                DropdownMenuItem(
                  child: const Text("Selasa"),
                  value: "Selasa",
                ),
                DropdownMenuItem(
                  child: const Text("Rabu"),
                  value: "Rabu",
                ),
                DropdownMenuItem(
                  child: const Text("Kamis"),
                  value: "Kamis",
                ),
                DropdownMenuItem(
                  child: const Text("Jumat"),
                  value: "Jumat",
                ),
                DropdownMenuItem(
                  child: const Text("Sabtu"),
                  value: "Sabtu",
                ),
                DropdownMenuItem(
                  child: const Text("Minggu"),
                  value: "Minggu",
                ),
                DropdownMenuItem(
                  child: const Text("Open Everyday"),
                  value: "Open Everyday",
                ),
              ],
              onChanged: (value) {
                controller.hari = value.toString();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form jam buka dan jam tutup
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: data['jam_buka'],
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Jam Buka",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      jam_buka = value;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    initialValue: data['jam_tutup'],
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Jam Tutup",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      jam_tutup = value;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //form tiket
            TextFormField(
              initialValue: data['tiket'],
              decoration: const InputDecoration(
                labelText: "Biaya Masuk",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                tiket = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form banner
            TextFormField(
              initialValue: data['banner'],
              decoration: const InputDecoration(
                labelText: "Link Banner",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                banner = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form foto1
            TextFormField(
              initialValue: data['foto1'],
              decoration: const InputDecoration(
                labelText: "Link Foto 1",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                foto1 = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form foto2
            TextFormField(
              initialValue: data['foto2'],
              decoration: const InputDecoration(
                labelText: "Link Foto 2",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                foto2 = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form foto3
            TextFormField(
              initialValue: data['foto3'],
              decoration: const InputDecoration(
                labelText: "Link Foto 3",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                foto3 = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            //button submit
            ElevatedButton(
              onPressed: () {
                controller.nama = nama;
                controller.alamat = alamat;
                controller.bio = bio;
                controller.hari = hari;
                controller.jam_buka = jam_buka;
                controller.jam_tutup = jam_tutup;
                controller.tiket = tiket;
                controller.banner = banner;
                controller.foto1 = foto1;
                controller.foto2 = foto2;
                controller.foto3 = foto3;
                controller.editKampus(data['id']);
              },
              child: const Text("Edit Kampus"),
            )
          ],
        ),
      ),
    );
  }
}
