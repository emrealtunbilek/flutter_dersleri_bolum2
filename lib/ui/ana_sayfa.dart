import 'package:flutter/material.dart';
import 'package:flutter_dersleri_bolum2/models/Veri.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);

  @override
  AnaSayfaState createState() {
    return new AnaSayfaState();
  }
}

class AnaSayfaState extends State<AnaSayfa> {
  List<Veri> tumVeriler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumVeriler = [
      Veri("Biz Kimiz", "Biz kimizin içeriği buraya gelecek", false),
      Veri("Biz Neredeyiz", "Biz neredeyiz içeriği buraya gelecek", false),
      Veri("Misyonumuz", "Biz kimizin içeriği buraya gelecek", false),
      Veri("Vizyonumuz", "Biz kimizin içeriği buraya gelecek", false),
      Veri("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      Veri("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      Veri("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      Veri("İletişim", "Biz kimizin içeriği buraya gelecek", false),
      Veri("İletişim", "Biz kimizin içeriği buraya gelecek", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumVeriler[index].baslik),
          initiallyExpanded: tumVeriler[index].expanded,
          children: <Widget>[
            Container(
              color:
                  index % 2 == 0 ? Colors.red.shade200 : Colors.yellow.shade300,
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(tumVeriler[index].icerik),
              ),
            )
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
