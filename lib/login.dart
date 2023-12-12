import 'package:flutter/material.dart';
import 'package:tosyali_deneme/anasayfa.dart';
import 'package:tosyali_deneme/register.dart';
import 'package:tosyali_deneme/sifremiUnuttum.dart';
import 'package:tosyali_deneme/veriTabaniArama.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _kullaniciAdiController = TextEditingController();
  TextEditingController _sifreController = TextEditingController();

  void _showMessageBox(BuildContext context, String mesaj) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Bilgilendirme'),
          content: Text(mesaj),
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
      body: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: ListView(
                shrinkWrap: true,
                children: [
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
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent, // Arka plan rengi
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: _kullaniciAdiController,
                          decoration: InputDecoration(
                            labelText: 'Kullanıcı Adı',
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.red,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenHeigh/50,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent, // Arka plan rengi
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: _sifreController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Şifre',
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.red,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenHeigh/30,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                        onPressed: () async {
                          Map Deger = Map.unmodifiable({"k1": "value"});
                          Deger = await kullaniciGirisi(
                              _kullaniciAdiController.text, _sifreController.text);
                          if( Deger["id"] != null){
                            print("Giriş Başarılı");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => anasayfa(Bilgiler: Deger,)),
                            );
                          }
                          else{
                            print("Giris basarisiz");
                            _showMessageBox(context,"Giriş Başarısız");

                          }


                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Giriş Yap',style: TextStyle(color: Colors.white),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Buton rengi
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          minimumSize: Size(ScreenWidth/8, ScreenHeigh/20), // Buton boyutunu belirle
                        ),
                      ),
                    ),

                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Register()),
                          );

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Kaydol',style: TextStyle(color: Colors.white),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Buton rengi
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          minimumSize: Size(ScreenWidth/8, ScreenHeigh/20), // Buton boyutunu belirle
                        ),
                      ),
                    ),

                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const sifremiUnuttum()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Şifremi Unuttum',style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
