import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tambahkampus_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class TambahkampusView extends GetView<TambahkampusController> {
  const TambahkampusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Kampus'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: ListView(
          children: [
            //form nama
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Nama Kampus",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                controller.nama = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form alamat
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Alamat Kampus",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                controller.alamat = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form bio
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Bio Kampus",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                controller.bio = value;
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
                    //tipe input jam
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Jam Buka",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      controller.jam_buka = value;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: "Jam Tutup",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      controller.jam_tutup = value;
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
              decoration: const InputDecoration(
                labelText: "Biaya Masuk",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                controller.tiket = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //form banner image dengan image picker
            ElevatedButton(
              onPressed: () {
                controller.getImage(ImageType.banner);
              },
              child: const Text("Pilih Banner"),
            ),
            const SizedBox(
              height: 10,
            ),
            //form foto1
            ElevatedButton(
              onPressed: () {
                controller.getImage(ImageType.foto1);
              },
              child: const Text("Pilih foto 1"),
            ),
            const SizedBox(
              height: 10,
            ),
            //form foto2
            ElevatedButton(
              onPressed: () {
                controller.getImage(ImageType.foto2);
              },
              child: const Text("Pilih foto 2"),
            ),
            const SizedBox(
              height: 10,
            ),
            //form foto3
            ElevatedButton(
              onPressed: () {
                controller.getImage(ImageType.foto3);
              },
              child: const Text("Pilih foto 3"),
            ),
            const SizedBox(
              height: 20,
            ),
            //button submit
            ElevatedButton(
              onPressed: () {
                controller.tambahKampus();
              },
              child: const Text("Tambah Kampus"),
            )
          ],
        ),
      ),
    );
  }
}
