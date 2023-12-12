import 'package:flutter/material.dart';
import 'package:tosyali_deneme/veriTabani.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController _kullaniciAdiController = TextEditingController();
  TextEditingController _sifreController = TextEditingController();
  TextEditingController _adController = TextEditingController();
  TextEditingController _soyadController = TextEditingController();
  TextEditingController _dogumTarihiController = TextEditingController();
  TextEditingController _ePostaController = TextEditingController();
  TextEditingController _notController = TextEditingController();

  final VeritabaniEkleme _authService = VeritabaniEkleme();

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeigh = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Kayıt Sayfası", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: ListView(
                shrinkWrap: true,
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
                          controller: _adController,
                          decoration: InputDecoration(
                            labelText: 'Ad',
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
                          controller: _soyadController,

                          decoration: InputDecoration(
                            labelText: 'Soyad',
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
                          controller: _dogumTarihiController,
                          decoration: InputDecoration(
                            labelText: 'Doğum Tarihi',
                            suffixIcon: Icon(
                              Icons.date_range,
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
                          controller: _ePostaController,

                          decoration: InputDecoration(
                            labelText: 'Eposta',
                            suffixIcon: Icon(
                              Icons.mail,
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
                          controller: _notController,

                          decoration: InputDecoration(
                            labelText: 'Not',
                            suffixIcon: Icon(
                              Icons.pending_actions,
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
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                        onPressed: () async {

                          RegExp passwordRegex = RegExp(
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$%^&*()_+{}\[\]:;<>,.?~\\/-]).{8,}$',
                          );


                          if (passwordRegex.hasMatch(_sifreController.text)) {
                            print("Şifre geçerlidir.");
                            _authService.kullaniciKaydiOlustur(
                                _kullaniciAdiController.text,
                                _sifreController.text,
                                _adController.text,
                                _soyadController.text,
                                _dogumTarihiController.text,
                                _ePostaController.text,
                                _notController.text).then(
                                  (value) {
                                print(value);
                              },
                            );
                            Navigator.pop(context);
                          } else {
                            print("Şifre geçerli değildir.");
                          }


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
                  SizedBox(
                    height: ScreenHeigh/50,
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
