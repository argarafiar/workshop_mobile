import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/minggu3_controller.dart';

import '../../../data/minggu3/kampus_model.dart';

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
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //pakai image asset
                      image:
                          AssetImage("assets/images/minggu3/kampus-unair.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text("Universitas Airlangga"),
                subtitle: Text("Jl. Airlangga No. 4, Surabaya"),
                onTap: () {
                  Get.toNamed(
                    "/detailkampus",
                    arguments: Kampus(
                      nama: "Universitas Airlangga",
                      alamat: "Jl. Airlangga No. 4, Surabaya",
                      hari: "Open Everyday",
                      jam: "08.00 - 17.00",
                      tiket: "Free",
                      banner: "assets/images/minggu3/kampus-unair.jpg",
                      deskripsi:
                          "UNAIR adalah universitas terkemuka di Indonesia dengan fasilitas lengkap seperti gedung perkuliahan, laboratorium, pusat olahraga, dan perpustakaan terbesar di Indonesia. Pusat layanan mahasiswa juga tersedia untuk membantu mahasiswa dalam akademik, kegiatan sosial, dan pengembangan karir.",
                      galery: [
                        "assets/images/minggu3/unair-img-1.jpeg",
                        "assets/images/minggu3/unair-img-2.jpg",
                        "assets/images/minggu3/unair-img-3.jpeg",
                      ],
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //pakai image asset
                      image: AssetImage("assets/images/minggu3/pens.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text("Politeknik Elektronika Negeri Surabaya"),
                subtitle: Text("Jl. Raya ITS, Keputih"),
                onTap: () {
                  Get.toNamed(
                    "/detailkampus",
                    arguments: Kampus(
                      nama: "Politeknik Elektronika Negeri Surabaya",
                      alamat: "Jl. Raya ITS, Keputih",
                      hari: "Open Everyday",
                      jam: "08.00 - 17.00",
                      tiket: "Free",
                      banner: "assets/images/minggu3/pens.jpg",
                      deskripsi:
                          "PENS adalah kampus negeri di Surabaya yang fokus pada elektronika dan teknologi informasi. Memiliki berbagai program studi dan fasilitas yang lengkap. PENS juga mendorong pengembangan soft skill dan keterampilan sosial melalui kegiatan ekstrakurikuler.",
                      galery: [
                        "assets/images/minggu3/pens1.jpg",
                        "assets/images/minggu3/pens2.png",
                        "assets/images/minggu3/pens3.jpeg",
                      ],
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //pakai image asset
                      image: AssetImage("assets/images/minggu3/unesa.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text("Universitas Negeri Surabaya"),
                subtitle: Text("Jl. Lidah Wetan, Lidah Wetan"),
                onTap: () {
                  Get.toNamed(
                    "/detailkampus",
                    arguments: Kampus(
                      nama: "Universitas Negeri Surabaya",
                      alamat: "Jl. Lidah Wetan, Lidah Wetan",
                      hari: "Open Everyday",
                      jam: "08.00 - 17.00",
                      tiket: "Free",
                      banner: "assets/images/minggu3/unesa.jpg",
                      deskripsi:
                          "UNESA adalah universitas negeri di Surabaya, Jawa Timur, Indonesia. Memiliki lebih dari 50 program studi dan fasilitas modern seperti perpustakaan, laboratorium, dan pusat olahraga. Menyediakan program kegiatan ekstrakurikuler untuk mengembangkan bakat mahasiswa.",
                      galery: [
                        "assets/images/minggu3/unesa1.jpg",
                        "assets/images/minggu3/unesa2.jpg",
                        "assets/images/minggu3/unesa3.jpeg",
                      ],
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //pakai image asset
                      image: AssetImage("assets/images/minggu3/upn.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text("Universitas Pembangunan Nasional Veteran"),
                subtitle: Text("Jl. Rungkut Madya No.1, Rungkut"),
                onTap: () {
                  Get.toNamed(
                    "/detailkampus",
                    arguments: Kampus(
                      nama: "Universitas Pembangunan Nasional Veteran",
                      alamat: "Jl. Rungkut Madya No.1, Rungkut",
                      hari: "Open Everyday",
                      jam: "08.00 - 17.00",
                      tiket: "Free",
                      banner: "assets/images/minggu3/upn.jpeg",
                      deskripsi:
                          "UPN Jawa Timur adalah perguruan tinggi negeri di Surabaya dengan 7 fakultas dan program studi di bidang teknik, ekonomi, pertanian, sosial dan politik, hukum, komunikasi, dan seni dan desain. Universitas ini terkenal dan diakui baik secara nasional maupun internasional.",
                      galery: [
                        "assets/images/minggu3/upn1.jpeg",
                        "assets/images/minggu3/upn2.jpg",
                        "assets/images/minggu3/upn3.jpeg",
                      ],
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //pakai image asset
                      image: AssetImage("assets/images/minggu3/its.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text("Institut Teknologi Sepuluh Nopember"),
                subtitle: Text("Jl. Teknik Kimia, Keputih"),
                onTap: () {
                  Get.toNamed(
                    "/detailkampus",
                    arguments: Kampus(
                      nama: "Institut Teknologi Sepuluh Nopember",
                      alamat: "Jl. Teknik Kimia, Keputih",
                      hari: "Open Everyday",
                      jam: "08.00 - 17.00",
                      tiket: "Free",
                      banner: "assets/images/minggu3/its.jpeg",
                      deskripsi:
                          "ITS adalah perguruan tinggi negeri di Surabaya dengan 11 fakultas dan sekolah, serta program studi di bidang teknik, ilmu komputer, matematika, arsitektur, dan manajemen. ITS Jawa Timur diakui secara nasional dan internasional sebagai salah satu perguruan tinggi terkemuka di Indonesia dalam bidang teknik dan sains.",
                      galery: [
                        "assets/images/minggu3/its1.jpg",
                        "assets/images/minggu3/its2.jpg",
                        "assets/images/minggu3/its3.jpeg",
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
