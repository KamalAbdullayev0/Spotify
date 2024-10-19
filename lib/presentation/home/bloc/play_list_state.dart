import 'package:spotify/domain/entities/song/song.dart';

abstract class PlayListState {}

class PlayListLoading extends PlayListState {}

class PlayListSuccess extends PlayListState {
  final List<SongEntity> songs;

  PlayListSuccess({required this.songs});
}

class PlayListLoadFailure extends PlayListState {}
