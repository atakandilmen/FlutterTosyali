import 'package:flutter/material.dart';
import 'package:tosyali_deneme/login.dart';
import 'package:tosyali_deneme/veriTabani.dart';
import 'package:tosyali_deneme/veriTabaniArama.dart';

class anasayfa extends StatefulWidget {
   anasayfa({super.key, required this.Bilgiler});
   final Map Bilgiler;
  @override
  State<anasayfa> createState() => _anasayfaState(Bilgiler);
}

class _anasayfaState extends State<anasayfa> {
  final Map Bilgiler;
  _anasayfaState(this.Bilgiler);

  TextEditingController _notController = TextEditingController();
  final VeritabaniEkleme _authService = VeritabaniEkleme();


  void _showMessageBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Yeni bir not gir'),
          content: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _notController,
                  decoration: InputDecoration(labelText: 'Metin Alanı'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _authService.NotGuncelle(Bilgiler["id"], _notController.text);
                    print('Text: ${_notController.text}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text('Güncelle'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Kapat'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeigh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: ScreenHeigh/30,
            ),
            Center(
              child: Container(
                height: ScreenHeigh/8,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'images/assets/Tosyali.png'), // Arka plan resmi
                    fit: BoxFit
                        .contain, // Resmi tamamen kaplamak için fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenHeigh/30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(ScreenWidth/15, ScreenHeigh/90, 0, ScreenHeigh/90),
                  child: Text("Not: "+Bilgiler["Not"]),
                ),
                IconButton(onPressed: (){
                  _showMessageBox(context);
                }, icon: Icon(Icons.restart_alt_rounded)),
              ],
            ),

            SizedBox(
              height: ScreenHeigh/30,
            ),
            Center(child: Text("Kişisel Bilgiler")),
            Padding(
              padding:  EdgeInsets.fromLTRB(ScreenWidth/15, ScreenHeigh/90, 0, ScreenHeigh/90),
              child: Text("Adı: "+Bilgiler["Ad"]),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(ScreenWidth/15, ScreenHeigh/90, 0, ScreenHeigh/90),
              child: Text("Soyadı: "+Bilgiler["Soyad"]),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(ScreenWidth/15, ScreenHeigh/90, 0, ScreenHeigh/90),
              child: Text("Doğum Tarihi: "+Bilgiler["DogumTarihi"]),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(ScreenWidth/15, ScreenHeigh/90, 0, ScreenHeigh/90),
              child: Text("Eposta: "+Bilgiler["Eposta"]),
            ),
          ],
        ),
      ),
    );
  }
}
