import 'package:flutter/material.dart';
import 'package:flutter_apprehber/model/burc.dart';
import 'package:flutter_apprehber/utils/strings.dart';

class BurcListesi extends StatelessWidget {
  List<Burc> tumBurclar;

  @override
  Widget build(BuildContext context) {
    tumBurclar = verikaynaginihazirla();
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: listeyihazirla(),
    );
  }

  Widget listeyihazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBurc(context, index);
      },
      itemCount: tumBurclar.length,
    );
  }

  List<Burc> verikaynaginihazirla() {
    List<Burc> burclar = [];
    for (int i = 0; i < 12; i++) {
      String kucukresim = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String buyukresim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          kucukresim,
          buyukresim);
      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  Widget tekSatirBurc(BuildContext context, int index) {
    Burc onakiEklenenBurc = tumBurclar[index];

    return Card(
      elevation: 4,
      child: ListTile(
        leading: Image.asset("images/" + onakiEklenenBurc.burcKucukResim,
            width: 64, height: 64),
        title: Text(onakiEklenenBurc.burcAdi,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.blue.shade500)),
        subtitle:Text(onakiEklenenBurc.burcTarihi,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black38)
        ) ,
        trailing:Icon(Icons.arrow_forward_ios,color: Colors.black38,),
      ),
    );
  }
}
