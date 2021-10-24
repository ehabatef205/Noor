import 'dart:math';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noor/colors.dart';
import 'package:rxdart/rxdart.dart';

class quranmp3 extends StatefulWidget {
  int number;

  quranmp3(this.number);

  @override
  _quranmp3State createState() => _quranmp3State(this.number);
}

class _quranmp3State extends State<quranmp3> {
  int number;

  _quranmp3State(this.number);

  AudioPlayer _player;

  ConcatenatingAudioSource _playlist;

  ConcatenatingAudioSource _playlist1 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/001.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/002.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/003.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/004.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/005.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/006.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/007.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/008.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/009.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/010.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/011.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/012.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/013.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/014.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/015.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/016.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/017.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/018.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/019.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/020.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/021.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/022.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/023.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/024.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/025.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/026.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/027.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/028.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/029.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/030.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/031.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/032.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/033.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/034.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/035.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/036.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/037.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/038.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/039.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/040.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/041.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/042.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/043.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/044.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/045.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/046.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/047.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/048.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/049.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/050.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/051.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/052.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/053.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/054.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/055.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/056.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/057.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/058.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/059.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/060.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/061.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/062.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/063.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/064.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/065.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/066.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/067.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/068.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/069.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/070.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/071.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/072.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/073.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/074.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/075.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/076.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/077.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/078.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/079.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/080.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/081.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/082.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/083.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/084.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/085.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/086.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/087.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/088.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/089.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/090.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/091.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/092.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/093.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/094.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/095.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/096.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/097.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/098.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/099.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/100.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/101.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/102.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/103.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/104.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/105.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/106.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/107.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/108.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/109.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/110.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/111.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/112.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/113.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/jleel/114.mp3"),
      tag: AudioMetadata(
        album: "خالد الجليل",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/9b/26/36/9b2636f5bbf7ef72abdb817018e96a4d.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist2 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/001.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/002.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/003.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/004.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/005.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/006.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/007.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/008.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/009.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/010.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/011.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/012.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/013.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/014.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/015.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/016.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/017.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/018.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/019.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/020.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/021.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/022.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/023.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/024.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/025.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/026.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/027.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/028.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/029.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/030.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/031.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/032.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/033.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/034.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/035.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/036.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/037.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/038.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/039.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/040.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/041.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/042.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/043.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/044.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/045.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/046.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/047.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/048.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/049.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/050.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/051.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/052.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/053.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/054.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/055.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/056.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/057.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/058.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/059.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/060.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/061.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/062.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/063.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/064.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/065.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/066.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/067.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/068.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/069.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/070.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/071.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/072.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/073.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/074.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/075.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/076.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/077.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/078.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/079.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/080.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/081.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/082.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/083.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/084.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/085.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/086.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/087.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/088.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/089.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/090.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/091.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/092.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/093.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/094.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/095.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/096.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/097.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/098.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/099.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/100.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/101.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/102.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/103.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/104.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/105.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/106.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/107.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/108.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/109.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/110.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/111.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/112.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/113.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad/114.mp3"),
      tag: AudioMetadata(
        album: "عبد الباسط عبد الصمد",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/52/95/ae/5295ae7c08e4ebdc7eda3ddb5c6c0a19.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist3 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/001.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/002.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/003.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/004.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/005.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/006.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/007.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/008.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/009.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/010.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/011.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/012.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/013.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/014.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/015.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/016.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/017.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/018.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/019.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/020.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/021.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/022.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/023.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/024.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/025.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/026.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/027.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/028.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/029.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/030.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/031.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/032.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/033.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/034.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/035.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/036.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/037.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/038.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/039.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/040.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/041.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/042.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/043.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/044.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/045.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/046.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/047.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/048.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/049.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/050.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/051.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/052.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/053.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/054.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/055.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/056.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/057.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/058.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/059.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/060.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/061.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/062.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/063.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/064.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/065.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/066.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/067.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/068.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/069.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/070.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/071.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/072.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/073.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/074.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/075.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/076.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/077.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/078.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/079.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/080.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/081.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/082.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/083.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/084.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/085.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/086.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/087.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/088.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/089.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/090.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/091.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/092.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/093.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/094.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/095.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/096.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/097.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/098.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/099.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/100.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/101.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/102.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/103.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/104.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/105.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/106.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/107.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/108.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/109.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/110.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/111.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/112.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/113.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse(
          "https://server16.mp3quran.net/kamel/Rewayat-Hafs-A-n-Assem/114.mp3"),
      tag: AudioMetadata(
        album: "عبد الله كامل",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/27/ac/70/27ac70b9f416d31f23d38f3b2e6cdc81.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist4 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/001.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/002.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/003.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/004.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/005.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/006.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/007.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/008.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/009.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/010.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/011.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/012.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/013.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/014.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/015.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/016.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/017.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/018.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/019.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/020.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/021.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/022.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/023.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/024.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/025.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/026.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/027.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/028.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/029.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/030.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/031.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/032.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/033.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/034.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/035.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/036.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/037.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/038.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/039.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/040.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/041.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/042.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/043.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/044.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/045.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/046.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/047.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/048.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/049.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/050.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/051.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/052.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/053.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/054.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/055.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/056.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/057.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/058.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/059.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/060.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/061.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/062.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/063.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/064.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/065.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/066.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/067.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/068.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/069.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/070.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/071.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/072.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/073.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/074.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/075.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/076.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/077.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/078.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/079.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/080.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/081.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/082.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/083.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/084.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/085.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/086.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/087.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/088.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/089.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/090.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/091.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/092.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/093.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/094.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/095.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/096.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/097.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/098.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/099.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/100.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/101.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/102.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/103.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/104.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/105.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/106.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/107.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/108.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/109.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/110.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/111.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/112.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/113.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/frs_a/114.mp3"),
      tag: AudioMetadata(
        album: "فارس عباد",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/fd/f5/aa/fdf5aa6d140c8264d6041179a003b5b0.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist5 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/001.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/002.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/003.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/004.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/005.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/006.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/007.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/008.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/009.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/010.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/011.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/012.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/013.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/014.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/015.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/016.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/017.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/018.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/019.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/020.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/021.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/022.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/023.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/024.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/025.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/026.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/027.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/028.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/029.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/030.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/031.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/032.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/033.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/034.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/035.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/036.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/037.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/038.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/039.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/040.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/041.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/042.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/043.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/044.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/045.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/046.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/047.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/048.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/049.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/050.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/051.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/052.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/053.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/054.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/055.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/056.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/057.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/058.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/059.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/060.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/061.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/062.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/063.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/064.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/065.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/066.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/067.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/068.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/069.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/070.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/071.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/072.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/073.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/074.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/075.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/076.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/077.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/078.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/079.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/080.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/081.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/082.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/083.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/084.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/085.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/086.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/087.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/088.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/089.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/090.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/091.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/092.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/093.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/094.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/095.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/096.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/097.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/098.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/099.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/100.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/101.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/102.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/103.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/104.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/105.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/106.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/107.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/108.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/109.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/110.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/111.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/112.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/113.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/maher/114.mp3"),
      tag: AudioMetadata(
        album: "ماهر المعيقلي",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/3a/56/a0/3a56a0428ad0faca14b51ba27d74fc9b.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist6 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/001.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/002.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/003.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/004.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/005.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/006.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/007.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/008.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/009.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/010.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/011.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/012.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/013.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/014.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/015.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/016.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/017.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/018.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/019.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/020.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/021.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/022.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/023.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/024.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/025.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/026.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/027.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/028.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/029.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/030.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/031.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/032.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/033.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/034.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/035.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/036.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/037.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/038.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/039.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/040.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/041.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/042.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/043.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/044.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/045.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/046.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/047.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/048.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/049.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/050.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/051.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/052.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/053.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/054.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/055.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/056.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/057.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/058.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/059.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/060.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/061.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/062.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/063.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/064.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/065.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/066.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/067.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/068.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/069.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/070.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/071.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/072.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/073.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/074.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/075.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/076.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/077.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/078.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/079.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/080.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/081.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/082.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/083.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/084.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/085.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/086.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/087.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/088.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/089.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/090.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/091.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/092.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/093.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/094.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/095.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/096.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/097.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/098.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/099.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/100.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/101.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/102.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/103.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/104.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/105.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/106.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/107.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/108.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/109.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/110.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/111.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/112.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/113.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server10.mp3quran.net/minsh/114.mp3"),
      tag: AudioMetadata(
        album: "محمد صديق المنشاوي",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/88/e0/44/88e0449e73816003c09354e85def9465.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist7 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/001.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/002.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/003.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/004.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/005.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/006.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/007.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/008.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/009.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/010.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/011.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/012.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/013.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/014.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/015.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/016.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/017.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/018.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/019.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/020.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/021.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/022.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/023.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/024.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/025.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/026.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/027.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/028.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/029.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/030.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/031.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/032.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/033.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/034.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/035.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/036.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/037.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/038.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/039.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/040.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/041.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/042.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/043.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/044.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/045.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/046.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/047.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/048.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/049.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/050.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/051.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/052.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/053.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/054.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/055.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/056.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/057.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/058.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/059.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/060.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/061.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/062.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/063.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/064.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/065.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/066.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/067.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/068.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/069.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/070.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/071.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/072.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/073.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/074.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/075.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/076.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/077.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/078.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/079.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/080.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/081.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/082.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/083.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/084.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/085.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/086.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/087.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/088.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/089.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/090.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/091.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/092.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/093.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/094.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/095.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/096.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/097.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/098.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/099.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/100.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/101.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/102.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/103.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/104.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/105.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/106.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/107.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/108.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/109.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/110.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/111.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/112.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/113.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server12.mp3quran.net/tblawi/114.mp3"),
      tag: AudioMetadata(
        album: "محمد محمود الطبلاوي",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/82/ba/15/82ba15a4a28efd39d0a7aa0f840753af.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist8 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/001.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/002.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/003.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/004.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/005.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/006.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/007.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/008.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/009.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/010.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/011.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/012.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/013.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/014.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/015.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/016.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/017.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/018.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/019.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/020.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/021.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/022.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/023.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/024.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/025.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/026.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/027.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/028.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/029.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/030.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/031.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/032.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/033.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/034.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/035.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/036.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/037.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/038.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/039.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/040.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/041.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/042.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/043.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/044.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/045.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/046.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/047.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/048.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/049.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/050.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/051.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/052.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/053.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/054.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/055.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/056.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/057.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/058.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/059.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/060.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/061.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/062.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/063.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/064.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/065.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/066.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/067.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/068.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/069.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/070.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/071.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/072.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/073.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/074.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/075.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/076.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/077.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/078.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/079.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/080.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/081.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/082.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/083.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/084.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/085.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/086.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/087.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/088.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/089.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/090.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/091.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/092.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/093.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/094.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/095.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/096.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/097.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/098.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/099.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/100.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/101.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/102.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/103.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/104.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/105.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/106.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/107.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/108.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/109.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/110.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/111.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/112.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/113.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server13.mp3quran.net/husr/114.mp3"),
      tag: AudioMetadata(
        album: "محمود خليل الحصري",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/3f/da/7e/3fda7ed5056347e700cac64d07e164c3.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist9 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/001.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/002.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/003.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/004.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/005.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/006.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/007.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/008.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/009.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/010.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/011.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/012.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/013.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/014.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/015.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/016.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/017.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/018.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/019.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/020.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/021.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/022.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/023.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/024.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/025.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/026.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/027.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/028.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/029.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/030.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/031.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/032.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/033.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/034.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/035.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/036.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/037.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/038.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/039.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/040.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/041.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/042.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/043.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/044.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/045.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/046.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/047.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/048.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/049.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/050.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/051.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/052.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/053.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/054.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/055.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/056.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/057.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/058.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/059.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/060.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/061.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/062.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/063.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/064.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/065.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/066.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/067.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/068.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/069.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/070.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/071.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/072.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/073.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/074.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/075.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/076.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/077.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/078.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/079.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/080.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/081.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/082.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/083.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/084.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/085.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/086.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/087.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/088.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/089.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/090.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/091.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/092.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/093.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/094.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/095.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/096.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/097.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/098.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/099.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/100.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/101.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/102.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/103.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/104.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/105.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/106.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/107.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/108.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/109.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/110.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/111.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/112.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/113.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server8.mp3quran.net/afs/114.mp3"),
      tag: AudioMetadata(
        album: "مشاري العفاسي",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/d3/1c/c0/d31cc05ca4198ee3dcd3558a2254b979.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist10 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/001.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/002.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/003.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/004.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/005.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/006.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/007.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/008.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/009.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/010.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/011.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/012.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/013.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/014.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/015.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/016.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/017.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/018.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/019.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/020.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/021.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/022.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/023.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/024.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/025.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/026.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/027.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/028.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/029.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/030.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/031.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/032.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/033.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/034.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/035.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/036.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/037.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/038.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/039.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/040.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/041.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/042.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/043.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/044.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/045.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/046.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/047.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/048.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/049.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/050.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/051.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/052.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/053.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/054.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/055.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/056.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/057.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/058.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/059.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/060.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/061.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/062.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/063.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/064.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/065.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/066.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/067.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/068.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/069.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/070.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/071.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/072.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/073.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/074.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/075.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/076.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/077.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/078.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/079.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/080.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/081.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/082.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/083.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/084.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/085.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/086.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/087.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/088.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/089.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/090.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/091.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/092.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/093.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/094.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/095.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/096.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/097.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/098.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/099.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/100.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/101.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/102.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/103.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/104.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/105.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/106.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/107.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/108.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/109.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/110.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/111.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/112.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/113.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server6.mp3quran.net/qtm/114.mp3"),
      tag: AudioMetadata(
        album: "ناصر القطامي",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/52/de/a5/52dea5b5ce9ea312315229b0bde677cd.jpg",
      ),
    ),
  ]);

  ConcatenatingAudioSource _playlist11 = ConcatenatingAudioSource(children: [
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/001.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الفَاتِحَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/002.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ البَقَرَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/003.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ آل عِمرَان",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/004.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النِّسَاء",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/005.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المَائدة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/006.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الأنعَام",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/007.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الأعرَاف",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/008.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الأنفَال",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/009.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ التوبَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/010.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ يُونس",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/011.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ هود",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/012.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ يُوسُف",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/013.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الرَّعْد",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/014.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ إبراهِيم",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/015.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الحِجْر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/016.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النَّحْل",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/017.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الإسْرَاء",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/018.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الكهْف",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/019.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ مَريَم",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/020.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ طه",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/021.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الأنبيَاء",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/022.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الحَج",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/023.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المُؤمنون",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/024.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النُّور",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/025.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الفُرْقان",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/026.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الشُّعَرَاء",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/027.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النَّمْل",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/028.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ القَصَص",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/029.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ العَنكبوت",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/030.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الرُّوم",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/031.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ لقمَان",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/032.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ السَّجدَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/033.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الأحزَاب",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/034.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ سَبَأ",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/035.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ فَاطِر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/036.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ يس",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/037.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الصَّافات",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/038.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ ص",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/039.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الزُّمَر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/040.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ غَافِر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/041.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ فُصِّلَتْ",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/042.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الشُّورَى",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/043.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الزُّخْرُف",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/044.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الدخَان",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/045.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الجَاثيَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/046.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الأحْقاف",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/047.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ محَمَّد",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/048.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الفَتْح",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/049.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الحُجرَات",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/050.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ ق",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/051.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الذَّاريَات",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/052.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الطُّور",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/053.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النَّجْم",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/054.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ القَمَر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/055.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الرَّحمن",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/056.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الوَاقِعَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/057.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الحَديد",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/058.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المجَادلة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/059.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الحَشر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/060.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المُمتَحنَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/061.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الصَّف",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/062.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الجُمُعَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/063.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المنَافِقون",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/064.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ التغَابُن",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/065.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الطلَاق",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/066.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ التحْريم",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/067.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المُلْك",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/068.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ القَلَم",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/069.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الحَاقَّة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/070.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المعَارج",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/071.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ نُوح",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/072.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الجِن",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/073.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المُزَّمِّل",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/074.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المُدَّثِّر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/075.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ القِيَامَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/076.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الإنسَان",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/077.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المُرسَلات",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/078.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النَّبَأ",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/079.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النّازعَات",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/080.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ عَبَس",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/081.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ التَّكوير",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/082.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الانفِطار",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/083.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المطفِّفِين",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/084.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الانْشِقَاق",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/085.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ البرُوج",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/086.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الطَّارِق",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/087.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الأَعْلى",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/088.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الغَاشِية",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/089.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الفَجْر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/090.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ البَلَد",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/091.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الشَّمْس",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/092.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الليْل",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/093.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الضُّحَى",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/094.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الشَّرْح",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/095.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ التِّين",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/096.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ العَلَق",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/097.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ القَدْر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/098.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ البَينَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/099.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الزلزَلة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/100.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ العَادِيات",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/101.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ القَارِعة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/102.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ التَّكَاثر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/103.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ العَصْر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/104.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الهُمَزَة",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/105.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الفِيل",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/106.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ قُرَيْش",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/107.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المَاعُون",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/108.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الكَوْثَر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/109.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الكَافِرُون",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/110.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النَّصر",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/111.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ المَسَد",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/112.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الإخْلَاص",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/113.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ الفَلَق",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
    AudioSource.uri(
      Uri.parse("https://server11.mp3quran.net/yasser/114.mp3"),
      tag: AudioMetadata(
        album: "ياسر الدوسري",
        title: "سُورَةُ النَّاس",
        artwork:
            "https://i.pinimg.com/564x/ce/16/20/ce162057a1ade9c255b35c87fc7edd93.jpg",
      ),
    ),
  ]);
  int _addedCount = 0;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));

    setState(() {
      switch (number) {
        case 1:
          _playlist = _playlist1;
          break;
        case 2:
          _playlist = _playlist2;
          break;
        case 3:
          _playlist = _playlist3;
          break;
        case 4:
          _playlist = _playlist4;
          break;
        case 5:
          _playlist = _playlist5;
          break;
        case 6:
          _playlist = _playlist6;
          break;
        case 7:
          _playlist = _playlist7;
          break;
        case 8:
          _playlist = _playlist8;
          break;
        case 9:
          _playlist = _playlist9;
          break;
        case 10:
          _playlist = _playlist10;
          break;
        case 11:
          _playlist = _playlist11;
          break;
      }
    });

    _init();
  }

  _init() async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.speech());
    try {
      await _player.setAudioSource(_playlist);
    } catch (e) {
      // catch load errors: 404, invalid url ...
      print("An error occured $e");
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: StreamBuilder<SequenceState>(
                stream: _player.sequenceStateStream,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  if (state?.sequence?.isEmpty ?? true) return SizedBox();
                  final metadata = state.currentSource.tag as AudioMetadata;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Container(
                            height: height * 0.3,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(metadata.artwork),
                              ),
                              shape: BoxShape.circle,
                            ),
                          )),
                        ),
                      ),
                      Text(metadata.album ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center),
                      Text(
                        metadata.title ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  );
                },
              ),
            ),
            ControlButtons(_player),
            StreamBuilder<Duration>(
              stream: _player.durationStream,
              builder: (context, snapshot) {
                final duration = snapshot.data ?? Duration.zero;
                return StreamBuilder<PositionData>(
                  stream: Rx.combineLatest2<Duration, Duration, PositionData>(
                      _player.positionStream,
                      _player.bufferedPositionStream,
                      (position, bufferedPosition) =>
                          PositionData(position, bufferedPosition)),
                  builder: (context, snapshot) {
                    final positionData = snapshot.data ??
                        PositionData(Duration.zero, Duration.zero);
                    var position = positionData.position ?? Duration.zero;
                    if (position > duration) {
                      position = duration;
                    }
                    var bufferedPosition =
                        positionData.bufferedPosition ?? Duration.zero;
                    if (bufferedPosition > duration) {
                      bufferedPosition = duration;
                    }
                    return SeekBar(
                      duration: duration,
                      position: position,
                      bufferedPosition: bufferedPosition,
                      onChangeEnd: (newPosition) {
                        _player.seek(newPosition);
                      },
                    );
                  },
                );
              },
            ),
            SizedBox(height: height * 0.05),
            Row(
              children: [
                StreamBuilder<LoopMode>(
                  stream: _player.loopModeStream,
                  builder: (context, snapshot) {
                    final loopMode = snapshot.data ?? LoopMode.off;
                    const icons = [
                      Icon(Icons.repeat, color: Colors.grey),
                      Icon(Icons.repeat, color: Colors.orange),
                    ];
                    const cycleModes = [
                      LoopMode.off,
                      LoopMode.one,
                    ];
                    final index = cycleModes.indexOf(loopMode);
                    return IconButton(
                      icon: icons[index],
                      onPressed: () {
                        _player.setLoopMode(cycleModes[
                            (cycleModes.indexOf(loopMode) + 1) %
                                cycleModes.length]);
                      },
                    );
                  },
                ),
                Expanded(
                  child: Text(
                    "Playlist",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                StreamBuilder<bool>(
                  stream: _player.shuffleModeEnabledStream,
                  builder: (context, snapshot) {
                    final shuffleModeEnabled = snapshot.data ?? false;
                    return IconButton(
                      icon: shuffleModeEnabled
                          ? Icon(Icons.shuffle, color: Colors.orange)
                          : Icon(Icons.shuffle, color: Colors.grey),
                      onPressed: () async {
                        final enable = !shuffleModeEnabled;
                        if (enable) {
                          await _player.shuffle();
                        }
                        await _player.setShuffleModeEnabled(enable);
                      },
                    );
                  },
                ),
              ],
            ),
            Container(
              height: height * 0.4,
              child: StreamBuilder<SequenceState>(
                stream: _player.sequenceStateStream,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  final sequence = state?.sequence ?? [];
                  return ReorderableListView(
                    onReorder: (int oldIndex, int newIndex) {
                      if (oldIndex < newIndex) newIndex--;
                      _playlist.move(oldIndex, newIndex);
                    },
                    children: [
                      for (var i = 0; i < sequence.length; i++)
                        Container(
                          key: ValueKey(sequence[i]),
                          child: Material(
                            color: i == state.currentIndex
                                ? Colors.white.withOpacity(0.1)
                                : backColor,
                            child: ListTile(
                              title: Text(
                                sequence[i].tag.title,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                _player.seek(Duration.zero, index: i);
                              },
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  ControlButtons(this.player);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: StreamBuilder<SequenceState>(
            stream: player.sequenceStateStream,
            builder: (context, snapshot) => IconButton(
              icon: Icon(
                Icons.skip_previous,
                size: height * 0.05,
                color: Colors.white,
              ),
              onPressed: player.hasPrevious ? player.seekToPrevious : null,
            ),
          ),
        ),
        Expanded(
          child: StreamBuilder<PlayerState>(
            stream: player.playerStateStream,
            builder: (context, snapshot) {
              final playerState = snapshot.data;
              final processingState = playerState?.processingState;
              final playing = playerState?.playing;
              if (processingState == ProcessingState.loading ||
                  processingState == ProcessingState.buffering) {
                return Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  margin: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                );
              } else if (playing != true) {
                return IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  iconSize: height * 0.1,
                  onPressed: player.play,
                );
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                  icon: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  iconSize: height * 0.1,
                  onPressed: player.pause,
                );
              } else {
                return IconButton(
                  icon: Icon(
                    Icons.replay,
                    color: Colors.white,
                  ),
                  iconSize: height * 0.1,
                  onPressed: () => player.seek(Duration.zero,
                      index: player.effectiveIndices.first),
                );
              }
            },
          ),
        ),
        Expanded(
          child: StreamBuilder<SequenceState>(
            stream: player.sequenceStateStream,
            builder: (context, snapshot) => IconButton(
              icon: Icon(
                Icons.skip_next,
                size: height * 0.05,
                color: Colors.white,
              ),
              onPressed: player.hasNext ? player.seekToNext : null,
            ),
          ),
        ),
      ],
    );
  }
}

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration> onChanged;
  final ValueChanged<Duration> onChangeEnd;

  SeekBar({
    @required this.duration,
    @required this.position,
    @required this.bufferedPosition,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  _SeekBarState createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double _dragValue;
  SliderThemeData _sliderThemeData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _sliderThemeData = SliderTheme.of(context).copyWith(
      trackHeight: 2.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SliderTheme(
          data: _sliderThemeData.copyWith(
            thumbShape: HiddenThumbComponentShape(),
            activeTrackColor: Colors.white.withOpacity(0.2),
            inactiveTrackColor: Colors.white.withOpacity(0.1),
          ),
          child: ExcludeSemantics(
            child: Slider(
              min: 0.0,
              max: widget.duration.inMilliseconds.toDouble(),
              value: widget.bufferedPosition.inMilliseconds.toDouble(),
              onChanged: (value) {
                setState(() {
                  _dragValue = value;
                });
                if (widget.onChanged != null) {
                  widget.onChanged(Duration(milliseconds: value.round()));
                }
              },
              onChangeEnd: (value) {
                if (widget.onChangeEnd != null) {
                  widget.onChangeEnd(Duration(milliseconds: value.round()));
                }
                _dragValue = null;
              },
            ),
          ),
        ),
        SliderTheme(
          data: _sliderThemeData.copyWith(
            inactiveTrackColor: Colors.transparent,
            thumbColor: Colors.teal,
            activeTrackColor: Colors.teal,
          ),
          child: Slider(
            min: 0.0,
            max: widget.duration.inMilliseconds.toDouble(),
            value: min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
                widget.duration.inMilliseconds.toDouble()),
            onChanged: (value) {
              setState(() {
                _dragValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged(Duration(milliseconds: value.round()));
              }
            },
            onChangeEnd: (value) {
              if (widget.onChangeEnd != null) {
                widget.onChangeEnd(Duration(milliseconds: value.round()));
              }
              _dragValue = null;
            },
          ),
        ),
        Positioned(
          right: 25.0,
          bottom: 0.0,
          child: Text(
            RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                    .firstMatch("$_remaining")
                    ?.group(1) ??
                '$_remaining',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Duration get _remaining => widget.duration - widget.position;
}

class AudioMetadata {
  final String album;
  final String title;
  final String artwork;

  AudioMetadata({this.album, this.title, this.artwork});
}

class HiddenThumbComponentShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => Size.zero;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    double textScaleFactor,
    Size sizeWithOverflow,
  }) {}
}

class PositionData {
  final Duration position;
  final Duration bufferedPosition;

  PositionData(this.position, this.bufferedPosition);
}
