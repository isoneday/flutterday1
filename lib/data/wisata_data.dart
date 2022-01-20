import 'package:my_first_flutterapp/model/wisata_model.dart';

class WisataData {
//set Data Wisata
  static var itemWisata = [
    WisataModel(
        namaWisata: "pasar terapung",
        alamatWisata:
            "banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin",
        gambar: "wisata1.jpeg",
        webWisata:
            "https://www.mytrip.co.id/article/5-fakta-pasar-terapung-banjarmasin-nggak-kalah-dari-thailand"),
    WisataModel(
        namaWisata: "loksado",
        alamatWisata: "kandangan",
        gambar: "wisata2.jpeg",
        webWisata:
            "https://id.wikipedia.org/wiki/Loksado,_Hulu_Sungai_Selatan"),
    WisataModel(
        namaWisata: "kalampayan ",
        alamatWisata: "martapura",
        gambar: "wisata3.jpeg",
        webWisata: "https://id.wikipedia.org/wiki/Muhammad_Arsyad_al-Banjari"),
    WisataModel(
        namaWisata: "pulau bekantan",
        alamatWisata: "banjarmasin",
        gambar: "wisata4.jpeg",
        webWisata: "https://id.wikipedia.org/wiki/Bekantan"),
    WisataModel(
        namaWisata: "taman permana",
        alamatWisata: "pelaihari",
        gambar: "wisata5.jpeg",
        webWisata:
            "https://banjarmasin.tribunnews.com/2021/05/18/wisata-kalsel-taman-permana-pelaihari-langganan-jadi-tempat-prawedding"),
    WisataModel(
        namaWisata: "pasar terapung",
        alamatWisata:
            "banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin",
        gambar: "wisata1.jpeg",
        webWisata:
            "https://www.mytrip.co.id/article/5-fakta-pasar-terapung-banjarmasin-nggak-kalah-dari-thailand"),
    WisataModel(
        namaWisata: "loksado",
        alamatWisata: "kandangan",
        gambar: "wisata2.jpeg",
        webWisata:
            "https://id.wikipedia.org/wiki/Loksado,_Hulu_Sungai_Selatan"),
    WisataModel(
        namaWisata: "kalampayan ",
        alamatWisata: "martapura",
        gambar: "wisata3.jpeg",
        webWisata: "https://id.wikipedia.org/wiki/Muhammad_Arsyad_al-Banjari"),
    WisataModel(
        namaWisata: "pulau bekantan",
        alamatWisata: "banjarmasin",
        gambar: "wisata4.jpeg",
        webWisata: "https://id.wikipedia.org/wiki/Bekantan"),
    WisataModel(
        namaWisata: "taman permana",
        alamatWisata: "pelaihari",
        gambar: "wisata5.jpeg",
        webWisata:
            "https://banjarmasin.tribunnews.com/2021/05/18/wisata-kalsel-taman-permana-pelaihari-langganan-jadi-tempat-prawedding"),
    WisataModel(
        namaWisata: "pasar terapung",
        alamatWisata:
            "banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin banjarmasin",
        gambar: "wisata1.jpeg",
        webWisata:
            "https://www.mytrip.co.id/article/5-fakta-pasar-terapung-banjarmasin-nggak-kalah-dari-thailand"),
    WisataModel(
        namaWisata: "loksado",
        alamatWisata: "kandangan",
        gambar: "wisata2.jpeg",
        webWisata:
            "https://id.wikipedia.org/wiki/Loksado,_Hulu_Sungai_Selatan"),
    WisataModel(
        namaWisata: "kalampayan ",
        alamatWisata: "martapura",
        gambar: "wisata3.jpeg",
        webWisata: "https://id.wikipedia.org/wiki/Muhammad_Arsyad_al-Banjari"),
    WisataModel(
        namaWisata: "pulau bekantan",
        alamatWisata: "banjarmasin",
        gambar: "wisata4.jpeg",
        webWisata: "https://id.wikipedia.org/wiki/Bekantan"),
    WisataModel(
        namaWisata: "taman permana",
        alamatWisata: "pelaihari",
        gambar: "wisata5.jpeg",
        webWisata:
            "https://banjarmasin.tribunnews.com/2021/05/18/wisata-kalsel-taman-permana-pelaihari-langganan-jadi-tempat-prawedding"),
  ];

  //get all data
  static var itemCount = itemWisata.length; // 15 item

  //get data by index
  static WisataModel? getItemWisata(int index) {
    return itemWisata[index];
  }
}
