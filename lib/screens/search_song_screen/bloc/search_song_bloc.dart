import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../common/session_manager.dart';
import '../../../data_layer/api/error_from_server.dart';
import '../../../data_layer/model/info_song_model.dart';
import '../../../data_layer/model/response_model/search_song_respone_model.dart';
import '../../../data_layer/request_params/search_song_param.dart';
import '../../../domain_layer/repository/dashboard_repository.dart';
import 'package:path_provider/path_provider.dart';

import '../../../utils/barrel_utils.dart';

part 'search_song_event.dart';
part 'search_song_state.dart';

class SearchSongBloc extends Bloc<SearchSongEvent, SearchSongState> {
  final dashboardRepository = DashboardRepository();

  SearchSongBloc() : super(SearchSongState(
    songsSearch: const [],
    statusSearch: FormzSubmissionStatus.initial,
    statusDownLoad: FormzSubmissionStatus.initial,
    contentNoti: "",
    listSongDownLoad: null,
  )) {
    on<SearchSongsEvent>(_searchSongsEvent);
    on<DownLoadSongEvent>(_downLoadSongEvent);
  }

  Future<void> _searchSongsEvent(SearchSongsEvent event, Emitter<SearchSongState> emit) async {
    emit(
      state.copyWith(
        statusSearch: FormzSubmissionStatus.inProgress,
        statusDownLoad: FormzSubmissionStatus.initial,
        contentNoti: "",
      )
    );
    try {
        
        final searchSongParam = SearchSongParam(
          q: event.textSearch, 
          ctime: "1678954891", 
          version: "1.9.12", 
          sig: "2aa6707f0596aacc916cd795c600c539d88e71ff89488a39be2b5595195dce98204665f1107aae7ba2315ddd956ef1cb636d7926f6ecef349d33ffae00660ed5", 
          apiKey: "X5BM3w8N7MKozC0B85o4KMlzLZKhV00y"
        );

        final response = await dashboardRepository.searchSongsAndSongTop(searchSongParam);

        InfoSongModel? songTop = InfoSongModel(encodeId: "", title: "", alias: "", artistsNames: "", thumbnailM: "", pathFileLocal: "", objectType: "", streamingStatus: 0, backgroundColor: "");
        if(response.songTop!.objectType.contains("song") && response.songTop!.streamingStatus == 1){
          songTop = response.songTop;
        }
        
        emit(
          state.copyWith(
            songTop: songTop,
            songsSearch: response.songs,
            statusSearch: FormzSubmissionStatus.success
          )
        );
        
      } on ErrorFromServer catch (e) {
        print("Lỗi ${e.errorCode}");
        emit(
          state.copyWith(
            statusSearch: FormzSubmissionStatus.failure
          )
        );
      }
  }

  Future<void> _downLoadSongEvent(DownLoadSongEvent event, Emitter<SearchSongState> emit) async {
    emit(
      state.copyWith(
        statusDownLoad: FormzSubmissionStatus.inProgress,
        contentNoti: "",
      )
    );

    print("BAFIIIIIII ${event.infoSong}");

    final listSongLocal = await SessionManager.share.getListSong();

    for(final data in listSongLocal!.songs){
      print("MMMMMMMMMMMMMK ${data}");
    }

    final songsLocal = listSongLocal.songs.where((item) => item.encodeId == event.infoSong.encodeId);
    if(songsLocal.isNotEmpty){
      print("Có bài hát ${songsLocal.first.encodeId}");

      emit(
        state.copyWith(
          statusDownLoad: FormzSubmissionStatus.canceled,
          contentNoti: "Bạn đã tải xuống bài hát này!",
        ),
      );
    }else{
      final file = await _downloadFile("http://api.mp3.zing.vn/api/streaming/audio/${event.infoSong.encodeId}/320", "${event.infoSong.alias}.mp3");

      if(file != null){
        var songDownLoad = event.infoSong;
        List<String> colors = await getImagePalette(NetworkImage(event.infoSong.thumbnailM));
        songDownLoad.backgroundColor = colors.join(",");
        songDownLoad.pathFileLocal = file.path;
        listSongLocal.songs.insert(0, songDownLoad);
        await SessionManager.share.removeListSong();
        await SessionManager.share.saveListSong(searchSongResponeModel: SearchSongResponeModel(songs: listSongLocal.songs));

        var listsongDownLoad = [...?state.listSongDownLoad];
        listsongDownLoad.insert(0, songDownLoad);
        emit(
          state.copyWith(
            statusDownLoad: FormzSubmissionStatus.success,
            contentNoti: "Tải xuống bài hát thành công!",
            listSongDownLoad: listsongDownLoad,
          ),
        );
      }else{
        emit(
          state.copyWith(
            statusDownLoad: FormzSubmissionStatus.failure,
            contentNoti: "Đã xảy ra lỗi khi tải xuống, vui lòng thử lại!",
          ),
        );
      }
    }
  }

  Future<File?> _downloadFile(String url, String filename) async {
    final status = await Permission.storage.status;

    if(status.isGranted) {
      var httpClient = new HttpClient();
      try{
        var request = await httpClient.getUrl(Uri.parse(url));
        var response = await request.close();
        var bytes = await consolidateHttpClientResponseBytes(response);

        var directory = null;
        if(Platform.isIOS){
          directory = await getApplicationSupportDirectory();
        }else{
          directory = await getExternalStorageDirectory();
        }

        final myImagePath = '${directory?.path}/MyMusics';

        await Directory(myImagePath).create();

        File file = File('$myImagePath/$filename');
        await file.writeAsBytes(bytes);
        print('downloaded file path = ${file.path}');
        return file;
      }catch(error){
        print('downloading error = $error');
        return null;
      }
    }else{
      return null;
    }
  }

  Future<List<String>> getImagePalette(ImageProvider imageProvider) async {

    List<String> colorsString = [
      COLOR_CONST.black.value.toString(),
      COLOR_CONST.black.value.toString(),
      COLOR_CONST.black.value.toString(),
    ];

    try{
      colorsString.clear();
      final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);

      for (var data in paletteGenerator.colors) {
        if (colorsString.length == 6) break;
        colorsString.add(data.value.toString());
      }
    }catch(_){

    }

    return colorsString;
  }
}
