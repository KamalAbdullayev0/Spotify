import 'package:cloud_firestore/cloud_firestore.dart';

class SongEntity {
  final String artist;
  final String title;
  final num duration;
  final Timestamp releaseDate;
  final bool isFavorite;
  final String songId;

  SongEntity({
    required this.artist,
    required this.title,
    required this.duration,
    required this.releaseDate,
    required this.isFavorite,
    required this.songId,
  });
}
