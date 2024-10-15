import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/domain/entities/song/song.dart';
import 'package:spotify/domain/usecases/song/get_news_songs.dart';
import 'package:spotify/presentation/home/bloc/news_songs_state.dart';
import 'package:spotify/service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoading());

  Future<void> getNewsSongs() async {
    print('Fetching songs...');
    var returnedSongs = await sl<GetNewsSongsUseCase>().call();
    print('Returned songs result: $returnedSongs');

    returnedSongs.fold(
      (l) {
        print('Failed to load songs: $l');
        emit(NewsSongsLoadFailure());
      },
      (data) {
        print('Data type: ${data.runtimeType}');
        print('Songs loaded successfully: $data');

        if (data is List<SongEntity>) {
          emit(NewsSongSuccess(songs: data));
        } else {
          print('Unexpected data format: $data');
          emit(NewsSongsLoadFailure());
        }
      },
    );
  }
}
