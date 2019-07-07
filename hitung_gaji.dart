import 'dart:io';

//CLASS GAJI (PARENT)
class Gaji {
  String nama;
  String x;

  void tampilNama(String nama) {
    stdout.write("Masukan Nama: ");
    x = stdin.readLineSync();
  }
}

// CLASS GAJI DOSEN
class GajiDosen extends Gaji {
  int sks;
  int gajiawal = 5000000;
  int tambahan = 50000;

  void tampilNama(String nama) {
    super.tampilNama(nama);
    this.nama = x;
  }
  int gaji1() {
    return (gajiawal + (sks * tambahan));
  }

}

// CLASS GAJI PEGAWAI
class GajiPegawai extends Gaji {
  int kehadiran;
  int gajiawal = 5000000;
  int tambahan = 25000;

  void tampilNama(String nama) {
    super.tampilNama(nama);
    this.nama = x;
  }

  int gaji2() {
    return (gajiawal + (kehadiran * tambahan));
  }
}

void main() {
  var dosen = GajiDosen();
  var pegawai = GajiPegawai();
  var pilih;
  var mengulang;
  String x;
  int y;

  awal:
  do {
    print("PROGRAM HITUNG GAJI");
    print("1. Gaji Dosen");
    print("2. Gaji Pegawai Staff");

    stdout.write("Pilih Kategori: ");
    pilih = stdin.readLineSync();

    if (pilih == '1') {
      print("Gaji Dosen");
      dosen.tampilNama(x);
      stdout.write("Masukan Jumlah SKS yang Diampu: ");
      y = int.parse(stdin.readLineSync());
      dosen.sks = y;
      print("Nama Dosen ${dosen.nama}, Jumlah SKS ${dosen.sks}, Total Gaji ${dosen.gaji1()}");

    } else if (pilih == '2') {
      print("Gaji Pegawai");
      pegawai.tampilNama(x);
      stdout.write("Masukan Jumlah Kehadiran: ");
      y = int.parse(stdin.readLineSync());
      pegawai.kehadiran = y;
      print("Nama Pegawai ${pegawai.nama}, Jumlah Kehadiran ${pegawai.kehadiran}, Total Gaji ${pegawai.gaji2()} ");
      
    } else {
      print("Kategori tidak ada");
    }

    stdout.write("Ingin mengulang? (y/n) ");
    mengulang = stdin.readLineSync();
  } while (mengulang == 'y' || mengulang =='y');
  print("TERIMAKASIH");
}