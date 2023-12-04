class Kampus {
  final String nama;
  final String alamat;
  final String hari;
  final String jam;
  final String tiket;
  final String banner;
  final String deskripsi;
  final List galery;

  Kampus({
    required this.nama,
    required this.alamat,
    required this.hari,
    required this.jam,
    required this.tiket,
    required this.banner,
    required this.deskripsi,
    required this.galery,
  });

  factory Kampus.fromJson(Map<String, dynamic> json) {
    return Kampus(
      nama: json['nama'],
      alamat: json['alamat'],
      hari: json['hari'],
      jam: json['jam'],
      tiket: json['tiket'],
      banner: json['banner'],
      deskripsi: json['deskripsi'],
      galery: json['galery'],
    );
  }

  Map<String, dynamic> toJson() => {
        'nama': nama,
        'alamat': alamat,
        'hari': hari,
        'jam': jam,
        'tiket': tiket,
        'banner': banner,
        'deskripsi': deskripsi,
        'galery': galery,
      };
}
