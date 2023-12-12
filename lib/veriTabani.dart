import 'package:cloud_firestore/cloud_firestore.dart';

class VeritabaniEkleme {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  kullaniciKaydiOlustur(
      String KullaniciAdi,
      String Sifre,
      String Ad,
      String Soyad,
      String DogumTarihi,
      String Eposta,
      String Not,
      ) async {
    await _firestore.collection("Kullanicilar").doc().set({
      'KullaniciAdi': KullaniciAdi,
      'Sifre': Sifre,
      'Ad': Ad,
      'Soyad': Soyad,
      'DogumTarihi': DogumTarihi,
      'Eposta': Eposta,
      'Not': Not,
    });
  }

  NotGuncelle(
      String id,
      String Not,
      ) async {
    await _firestore
        .collection("Kullanicilar")
        .doc(id)
        .update({
      "Not": Not,
    });
  }

  SifreGuncelle(
      String id,
      String Sifre,
      ) async {
    await _firestore
        .collection("Kullanicilar")
        .doc(id)
        .update({
      "Sifre": Sifre,
    });
  }



}
