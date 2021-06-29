import 'package:flutter/material.dart';
import 'package:spacerobotics/sayfalar/anasayfa.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/ss.jpg"),
              )),
            ),
            Column(
              children: [SizedBox(height: 150,),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image:
                        AssetImage("assets/Başlıksız-3-removebg-preview.png"),
                  )),
                ),
                Row(children: [
                  Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AnaSayfa()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,boxShadow: [BoxShadow(color: Colors.blue,offset: Offset(0,2),blurRadius: 10),BoxShadow(color: Colors.red,offset: Offset(0,-2),blurRadius: 10)])),
                ),
              ),
            ),
                ],)
              ],
            ),
          ],
        ));
  }
}
