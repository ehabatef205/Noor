import 'dart:math';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class RamadanMp3 extends StatefulWidget {
  @override
  _RamadanMp3State createState() => _RamadanMp3State();
}

class _RamadanMp3State extends State<RamadanMp3> with WidgetsBindingObserver {
  AudioPlayer _player;

  ConcatenatingAudioSource _playlist = ConcatenatingAudioSource(children: [
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_01.%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA%20%D8%B4%D9%87%D8%B1%20%D8%B1%D9%85%D8%B6%D8%A7%D9%86%202018%20%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%20%D8%B5%D9%84%D8%A7%D8%A9%20%D8%A7%D9%84%D9%81%D8%AC%D8%B1%20%D9%83%D8%A7%D9%85%D9%84.mp3?alt=media&token=c90aa6e8-ad0b-45ad-852e-cc8f22d3a205"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 1",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_02.%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%20%D8%B1%D9%85%D8%B6%D8%A7%D9%86%20%D8%A7%D9%87%D9%84%D8%A7%20%D9%88%D9%85%D8%B1%D8%AD%D8%A8%D8%A7%20%D8%B1%D9%85%D8%B6%D8%A7%D9%86%20--%20%D9%84%D9%84%D9%85%D8%A8%D8%AA%D9%87%D9%84%20%D8%B3%D9%8A%D8%AF%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A.mp3?alt=media&token=d3fe3ebc-9457-41c8-940b-0b4ca8445ade"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 2",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_04.%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%20%D8%B1%D9%85%D8%B6%D8%A7%D9%86%20%D8%A7%D8%B4%D8%B1%D9%82.mp3?alt=media&token=d66d9a8e-c1ea-4194-9f9d-5f78396e7b99"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 3",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_06.%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%20%D9%84%D9%8A%D9%84%D8%A9%20%D8%A7%D9%84%D9%82%D8%AF%D8%B1%20-%20%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=ea8a7ac9-06a6-4685-936d-2485e273ff1a"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 4",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_07.%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A7%D8%AA%20-%20%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=9eeca361-3a84-4fd5-b0c6-ff0306f6a692"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 5",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_08.%D9%8A%D8%A7%20%D9%88%D8%A7%D9%87%D8%A8%20%D8%A7%D9%84%D8%AE%D9%8A%D8%B1.mp3?alt=media&token=1d547bc3-7111-4caa-ab2c-9a4b864eedf9"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 6",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%20%D9%82%D8%A8%D8%B6%D8%A9%20%D8%A7%D9%84%D9%84%D9%87%20.mp3?alt=media&token=432ca068-cbe0-4e88-8c62-ac6ee5ed6b98"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 7",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%20%D9%86%D9%81%D8%B3%D9%89%20%D9%8A%D8%A7%20%D8%B1%D8%A8%20.mp3?alt=media&token=14a78d5b-e95d-4a78-a65b-a2adb61f5c60"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 8",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%20%D9%8A%D8%A7%20%D9%86%D9%88%D8%B1%20%D9%83%D9%84%20%D8%B4%D8%A6%20%D9%88%20%D9%87%D8%AF%D8%A7%D9%87%20-%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=42010e3b-8200-4b34-a74f-19b02e131823"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 9",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%A7%D8%AE%D9%88%D8%A7%D8%AA%20%D8%A7%D9%84%D8%AD%D9%82%20-%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=60941dd6-dee7-4748-87e9-b4a7694ec291"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 10",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%A7%D9%84%D9%86%D9%81%D8%B3%20%D8%AA%D8%B4%D9%83%D9%88%20-%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=e126512e-fd71-42fb-975d-8996c4991152"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 11",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%A7%D9%84%D9%87%D9%8A%20%D9%84%D8%A8%D9%8A%D9%83%20-%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=531c41a0-535b-44cd-aa23-59c0da6f539b"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 12",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%B1%D8%A8%20%D9%87%D8%A8%20%D9%84%D9%8A%20%D9%87%D8%AF%D9%89%20-%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=d262c766-1d6c-40d4-9205-a310b995b3cb"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 13",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%B1%D8%A8%D9%86%D8%A7%20-%20%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=13f46bf1-39ae-488b-ac53-b44346c25999"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 14",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%B5%D9%8A%D8%BA%D8%A9%20%D8%A7%D9%84%D8%A2%D8%B0%D8%A7%D9%86%20-%20%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=26263788-add1-4bf5-97ef-3474051788ce"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 15",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D8%B9%D8%AC%D9%8A%D8%A8%20-%20%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=17081b14-0b92-4c28-9e86-95fed7c56d99"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 16",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D9%85%D8%A7%D8%B4%D9%8A%20%D8%A8%D9%86%D9%88%D8%B1%20%D8%A7%D9%84%D9%84%D9%87%20-%20%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=f557bd23-952b-4d00-b36a-bd0fb8d240d8"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 17",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D9%85%D9%88%D9%84%D8%A7%D9%89%20%D8%A7%D9%86%D9%89%20%D8%A8%D8%A8%D8%A7%D8%A8%D9%83%20-%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=d4c53820-84d5-4404-831c-2129ea33694b"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 18",
        artwork:
            "assets/ram.png",
      ),
    ),
    LockCachingAudioSource(
      Uri.parse("https://firebasestorage.googleapis.com/v0/b/ramadan-f94fa.appspot.com/o/music_test2_%D8%A3%D8%BA%D8%A7%D9%86%D9%8A%20%D8%A5%D8%B3%D9%84%D8%A7%D9%85%D9%8A%D8%A9_%D8%A7%D8%A8%D8%AA%D9%87%D8%A7%D9%84%D8%A7%D8%AA-%D8%B1%D9%85%D8%B6%D8%A7%D9%86%D9%8A%D8%A9_%D9%8A%D8%A7%20%D9%82%D8%AF%D9%8A%D8%B1%20-%20%20%D8%A7%D9%84%D9%86%D9%82%D8%B4%D8%A8%D9%86%D8%AF%D9%8A%20.mp3?alt=media&token=f3d1f522-b3d9-4cdd-afa8-317f97a616ac"),
      tag: AudioMetadata(
        album: "تواشيح وابتهالات",
        title: "تواشيح وابتهالات 19",
        artwork:
            "assets/ram.png",
      ),
    ),
  ]);
  int _addedCount = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    _player = AudioPlayer();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));

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
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/s.jpg"), fit: BoxFit.fill)),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("رمضانك",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "MO_Nawel",
                )),
            actions: [
              IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_forward))
            ],
          ),
          backgroundColor: Colors.transparent,
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
                                    image: AssetImage(metadata.artwork),
                                  ),
                                ),
                              )),
                            ),
                          ),
                          Text(metadata.album ?? '',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center),
                          Text(metadata.title ?? '', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 15),),
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
                        "Play list",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
                                    ? Colors.grey.withOpacity(0.5)
                                    : Colors.transparent,
                                child: ListTile(
                                  title: Text(
                                    sequence[i].tag.title,
                                    style: TextStyle(color: Colors.white),
                                    textDirection: TextDirection.rtl,
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
              icon: Icon(Icons.skip_previous, size: height * 0.05, color: Colors.white,),
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
                  icon: Icon(Icons.play_arrow, color: Colors.white,),
                  iconSize: height * 0.1,
                  onPressed: player.play,
                );
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                  icon: Icon(Icons.pause, color: Colors.white,),
                  iconSize: height * 0.1,
                  onPressed: player.pause,
                );
              } else {
                return IconButton(
                  icon: Icon(Icons.replay, color: Colors.white,),
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
              icon: Icon(Icons.skip_next, size: height * 0.05, color: Colors.white,),
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
            activeTrackColor: Colors.blue.shade100,
            inactiveTrackColor: Colors.grey.shade300,
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
              style: TextStyle(color: Colors.white)),
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
