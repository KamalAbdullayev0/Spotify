import 'package:spotify/domain/entities/song/song.dart';

abstract class NewsSongsState {}

class NewsSongsLoading extends NewsSongsState {}

class NewsSongSuccess extends NewsSongsState {
  final List<SongEntity> songs;

  NewsSongSuccess({required this.songs});
}

class NewsSongsLoadFailure extends NewsSongsState {}
