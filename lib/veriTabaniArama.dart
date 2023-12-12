import 'package:cloud_firestore/cloud_firestore.dart';

var db = FirebaseFirestore.instance;

Future<Map> kullaniciGirisi(String kullaniciAdi,String sifre) async {
  Map userMap = Map.unmodifiable({"k1": "value"});
  await db
      .collection("Kullanicilar")
      .where("KullaniciAdi", isEqualTo: kullaniciAdi)
      .where("Sifre", isEqualTo: sifre)
      .get()
      .then(
        (value) {
      for (var result in value.docs) {
        userMap = result.data();
        userMap["id"] = result.id;
      }
    },
  );
  return userMap;
}

Future<Map> SifresiGuncellenecekKisi(String kullaniciAdi,String Ad, String Soyad, String Eposta) async {
  Map userMap = Map.unmodifiable({"k1": "value"});
  await db
      .collection("Kullanicilar")
      .where("KullaniciAdi", isEqualTo: kullaniciAdi)
      .where("Ad", isEqualTo: Ad)
      .where("Soyad", isEqualTo: Soyad)
      .where("Eposta", isEqualTo: Eposta)
      .get()
      .then(
        (value) {
      for (var result in value.docs) {
        userMap = result.data();
        userMap["id"] = result.id;
      }
    },
  );
  return userMap;
}

