import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siparis_proje_takip/sabitler/ext.dart';
import 'package:siparis_proje_takip/sabitler/tema.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  Tema tema=Tema();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,//ekranın genişliği kadar containera genişlik ver
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: renk(arka_renk),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.2), width: 1)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: renk("202F3A"), width: 15)),
                    child: Icon(
                      Icons.login,
                      size: 45.0,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Giriş yapın",
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 30,
                      ),
                    )),
                Container(
                  decoration:tema.inputBoxDec(),
                  margin: EdgeInsets.only(top: 30,bottom: 10,right:15,left: 15),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: TextFormField(
                    decoration:tema.inputDec("E-posta adresini giriniz",Icons.people_alt_outlined),
                    style: GoogleFonts.quicksand(color: renk(metin_renk)),
                  ),
                ),
                Container(
                  decoration: tema.inputBoxDec(),
                  margin: EdgeInsets.only(top: 5,bottom: 30,right: 15,left: 15),
                  padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: TextFormField(
                    obscureText: true,
                    decoration: tema.inputDec("şifrenizi giriniz",Icons.key),
                    style: GoogleFonts.quicksand(color: renk(metin_renk),letterSpacing: 5),
                  ),

                ),
                InkWell(//içine yazılan widgete tıklanabilirlik sağlar
                  onTap:(){
                    print("tıklandı");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors:[
                        renk("4E73DF"),renk("224ABE"),],
                        begin: Alignment.topRight,end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:[ BoxShadow(color: renk("2D2F36"),offset:Offset(0,4),blurRadius: 5,),],
                    ),
                    child: Center(child: Text("GİRİŞ YAP",style: GoogleFonts.quicksand(color: Colors.white,fontSize: 20),)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
