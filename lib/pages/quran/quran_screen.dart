import 'package:flutter/material.dart';
import 'package:islamic/pages/quran/widget/text.dart';
import 'package:islamic/widget/dvider.dart';

class Quran extends StatelessWidget {
  List<String> SurahNameArabic = [
    "الفَاتِحَة",
    "البَقَرَة",
    "آل عِمرَان",
    "النِّسَاء",
    "المَائدة",
    "الأنعَام",
    "الأعرَاف",
    "الأنفَال",
    "التوبَة",
    "يُونس",
    "هُود",
    "يُوسُف",
    "الرَّعْد",
    "إبراهِيم",
    "الحِجْر",
    "النَّحْل",
    "الإسْرَاء",
    "الكهْف",
    "مَريَم",
    "طه",
    "الأنبيَاء",
    "الحَج",
    "المُؤمنون",
    "النُّور",
    "الفُرْقان",
    "الشُّعَرَاء",
    "النَّمْل",
    "القَصَص",
    "العَنكبوت",
    "الرُّوم",
    "لقمَان",
    "السَّجدَة",
    "الأحزَاب",
    "سَبَأ",
    "فَاطِر",
    "يس",
    "الصَّافات",
    "ص",
    "الزُّمَر",
    "غَافِر",
    "فُصِّلَتْ",
    "الشُّورَى",
    "الزُّخْرُف",
    "الدُّخان",
    "الجاثِية",
    "الأحقاف",
    "مُحَمّد",
    "الفَتْح",
    "الحُجُرات",
    "ق",
    "الذَّاريَات",
    "الطُّور",
    "النَّجْم",
    "القَمَر",
    "الرَّحمن",
    "الواقِعَة",
    "الحَديد",
    "المُجادَلة",
    "الحَشْر",
    "المُمتَحَنة",
    "الصَّف",
    "الجُّمُعة",
    "المُنافِقُون",
    "التَّغابُن",
    "الطَّلاق",
    "التَّحْريم",
    "المُلْك",
    "القَلـََم",
    "الحَاقّـَة",
    "المَعارِج",
    "نُوح",
    "الجِنّ",
    "المُزَّمّـِل",
    "المُدَّثــِّر",
    "القِيامَة",
    "الإنسان",
    "المُرسَلات",
    "النـَّبأ",
    "النـّازِعات",
    "عَبَس",
    "التـَّكْوير",
    "الإنفِطار",
    "المُطـَفِّفين",
    "الإنشِقاق",
    "البُروج",
    "الطّارق",
    "الأعلی",
    "الغاشِيَة",
    "الفَجْر",
    "البَـلـَد",
    "الشــَّمْس",
    "اللـَّيل",
    "الضُّحی",
    "الشَّرْح",
    "التـِّين",
    "العَلـَق",
    "القـَدر",
    "البَيِّنَة",
    "الزلزَلة",
    "العَادِيات",
    "القارِعَة",
    "التَكاثـُر",
    "العَصْر",
    "الهُمَزَة",
    "الفِيل",
    "قـُرَيْش",
    "المَاعُون",
    "الكَوْثَر",
    "الكَافِرُون",
    "النـَّصر",
    "المَسَد",
    "الإخْلَاص",
    "الفَلَق",
    "النَّاس",
  ];

  List<String> SurahNameEnglish = [
    "al-faatiHah",
    "al-baqarah",
    "aali-`imraan",
    "an-nisaa",
    "al-maaidah",
    "al-an`aam",
    "al-a`raaf",
    "al-anfaal",
    "at-tawbah",
    "yoonus",
    "hood",
    "yoosuf",
    "ar-Ra`d",
    "ibraheem",
    "al-Hijr",
    "an-naHl",
    "al-Isra",
    "al-kahf",
    "maryam",
    "Taa haa",
    "al-anbiyaa",
    "al-Hajj",
    "al-muminoon",
    "an-noor",
    "al-furqaan",
    "ash-shu`araa",
    "an-naml",
    "al-qasas",
    "al-`ankaboot",
    "ar-room",
    "luqmaan",
    "as-sajdah",
    "al-aHzab",
    "as-Saba",
    "faaTir",
    "yaa seen",
    "aS-Saaffaat",
    "Saad",
    "az-zumar",
    "Ghafir",
    "Fussilat",
    "ash-shooraa",
    "azl-zukhruf",
    "ad-dukhaan",
    "al-jaathiyah",
    "al-aHqaaf",
    "muHammad",
    "al-fatH",
    "al-Hujuraat",
    "qaaf",
    "ad-dhaariyaat",
    "aT-Toor",
    "an-najm",
    "al-qamar",
    "ar-raHmaan",
    "al-waaqi`ah",
    "al-Hadeed",
    "al-mujaadilah",
    "al-Hashr",
    "al-mumtaHanah",
    "as-saff",
    "al-jumu`ah",
    "al-munafiqoon",
    "at-taghaabun",
    "aT-Talaaq",
    "at-taHreem",
    "al-mulk",
    "al-qalam",
    "al-Haaqqah",
    "al-ma`aarij",
    "nooH",
    "al-jinn",
    "al-muzammil",
    "al-muddaththir",
    "al-qiyaamah",
    "al-insane",
    "al-mursalaat",
    "an-naba",
    "an-naazi`aat",
    "abasa",
    "at-takweer",
    "al-infiTaar",
    "Al-Mutaffifeen",
    "al-inshiqaaq",
    "al-burooj",
    "aT-Taariq",
    "al-A`laa",
    "al-ghaashiyah",
    "al-fajr",
    "al-balad",
    "ash-shams",
    "al-lail",
    "aD-DuHaa",
    "ash-Sharh",
    "aT-Teen",
    "al-`alaq",
    "al-qadr",
    "al-bayyinah",
    "Az-Zalzala",
    "al-`aadiyaat",
    "al-qaari`ah",
    "at-takaathur",
    "al-`asr",
    "al-humazah",
    "al-feel",
    "al-quraish",
    "al-maa`oon",
    "al-kauthar",
    "al-kaafiroon",
    "an-naSr",
    "Al-Masad",
    "al-ikhlaaS",
    "al-falaq",
    "an-naas",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        body: Column(
      children: [
        Image.asset("assets/images/quran_image.png"),
        Expanded(
          child: ListView.builder(
            itemCount: SurahNameArabic.length,
            itemBuilder: (contex, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    padding: EdgeInsets.only(left: 5),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset("assets/images/pngwing.com.png"),
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "${index + 1}",
                                  style: theme.textTheme.titleMedium
                                      ?.copyWith(fontSize: 20),
                                )),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        TextTitle(text: "${SurahNameEnglish[index]}"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        TextTitle(text: "${SurahNameArabic[index]}"),
                      ],
                    ),
                  ),
                  DividerLine(),
                ],
              );
            },
          ),
        ),
      ],
    ));
  }
}
