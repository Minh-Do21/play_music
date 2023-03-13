import 'package:dio/dio.dart';
import 'package:g_json/g_json.dart';
import '../../data_layer/api/barrel_api.dart';
import '../../data_layer/request_params/trend_video_param.dart';
import '../../data_layer/request_params/video_user_post_param.dart';

class ProfileRepository {
  APIDataStore apiDataStore = APIDataStore();
  //get home banners

  // Future<VideoUserPostResponeModel> getVideoUserPost(VideoUserPostParam videoUserPostParam) async {
  //   try {

  //     // final response = await apiDataStore.requestAPI(
  //     //   ApiURL.getVideoUserPost,
  //     //   params: videoUserPostParam.toJson()
  //     // );

  //     final response = await objectData();
  //     return VideoUserPostResponeModel.fromJson(JSON(response['data']));
  //   } on DioError catch (e) {
  //     throw ErrorFromServer(message: e.message);
  //   }
  // }

  Future<dynamic> objectData() async {
    return {
       "code": 0,
    "msg": "success",
    "processed_time": 0.8817,
    "data": {
        "videos": [
            {
                "aweme_id": "v0f025gc0000cffjkvrc77u2m9md15g0",
                "video_id": "7196535329103400218",
                "region": "VN",
                "title": "2 thằng đàn ông, thằng tóc ngắn thằng tóc dài 🤣 #hai #men ",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/f8620676d14a47a7a4067b52226c4f0a_1675573961?x-expires=1677146400&x-signature=%2Ba59TbxN%2FbktOAn6JGew7ee4uvk%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/2c8326cd1ad74e48909fa165ff541f9a_1675573961~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=SzZWbuO9xq%2BzYc6qDCCHBzW1YeA%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 11,
                "play": "https://v16m.tiktokcdn.com/cb0907a6524f13c5949c527c19bd955b/63f63e3c/video/tos/useast2a/tos-useast2a-pve-0037-aiso/oAFmOn2Zno2sAfFTAhegeJrfLEbjHDGQDmgNEv/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2162&bt=1081&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ZzQ3O2c1NmRpaWQ4aTc7M0BpMzhnPDU6ZnltaTMzZjgzM0AtMy4uLTA1XjUxYmM2XjNjYSNkLmpqcjRvaGNgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/f3ed17ca61235a3d9010a8473651c4c7/63f63e3c/video/tos/useast2a/tos-useast2a-pve-0037-aiso/oc8TQeAZfnAKPNDMlneFGrHgOEhgLEQvombufD/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2506&bt=1253&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=Zjc1Nmg1NWhoODc5ZmRlNUBpMzhnPDU6ZnltaTMzZjgzM0BfMS9jYDAwXi8xMjViLTA1YSNkLmpqcjRvaGNgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 1620005,
                "wm_size": 1877375,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7193925716479003419.mp3",
                "music_info": {
                    "id": "7193925706819111706",
                    "title": "original sound - pinguyen3.14",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7193925716479003419.mp3",
                    "cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-avt-0068-giso/5135f676068c1d17fcbd819144a919da~c5_1080x1080.jpeg?x-expires=1677146400&x-signature=92hSx%2Fzd7Hliy1JW2NRKSghSzy8%3D",
                    "author": "3,14",
                    "original": true,
                    "duration": 24,
                    "album": ""
                },
                "play_count": 1240,
                "digg_count": 36,
                "comment_count": 2,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1675573958,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000cf8a7m3c77u7ph7bp4kg",
                "video_id": "7192429219576679706",
                "region": "VN",
                "title": "Hết Tết 👋🏻 #CapCut #Beautyful #tet2023 ",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/a2eebed387e84a548eec7dc0d0ef42e6_1674617944?x-expires=1677146400&x-signature=QxaMR2QmDEkXyH%2F5QuuOT0lwWO8%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/76bf7226b1e04ef3b1664d2f9a1da873_1674617944~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=dZBhmlvKdRCkO6tyEehsHzY6vMw%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 14,
                "play": "https://v16m.tiktokcdn.com/7ed09b3b66999b9f93c12eedb4f36d63/63f63e3f/video/tos/useast2a/tos-useast2a-pve-0037-aiso/oQzxw6H6CAaHQKiBoIfp6pnzsNEk8FFhhBADQU/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2670&bt=1335&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ODppM2ZlODY7NDkzOzozNkBpajdlazo6ZnBkaTMzZjgzM0AuLjMyXzI2NmMxYmM0L19hYSNobTRtcjQwNDVgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/5e76a6e6013d7323f2e31fcbd4a5a41e/63f63e3f/video/tos/useast2a/tos-useast2a-pve-0037-aiso/oINsmkGnFxEaIohBp68fzBGzAwCp6UKQHHnAQh/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2888&bt=1444&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=OGk8ZjRpOGg3OzQ2O2kzPEBpajdlazo6ZnBkaTMzZjgzM0AvXi8wNDQ0XmExNGJeYGNeYSNobTRtcjQwNDVgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 2523871,
                "wm_size": 2729563,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7192429269242432282.mp3",
                "music_info": {
                    "id": "7192429241756502811",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7192429269242432282.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 14,
                    "album": ""
                },
                "play_count": 219,
                "digg_count": 17,
                "comment_count": 0,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1674617935,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000cf61jrbc77u0lp192efg",
                "video_id": "7191152953078648091",
                "region": "VN",
                "title": "Kép lại 2022, cảm ơn em. Cùng đón 2023 nào @Nhun Nhun 🌹 #tetmaiman #TetDongMoiVuiLays #tet ",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/faa0150abdcb4571b9392b93479d59e6_1674320786?x-expires=1677146400&x-signature=UduWNTecaPgmT7HUJXPggLC0pJo%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/48c82b3ad6434c09a3576db6cf2f2c6b_1674320786~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=tQgaWhpfXKRbvoQIEhNPIykJq40%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 18,
                "play": "https://v16m.tiktokcdn.com/400597aef263d9297785dcb9fbee2fd9/63f63e43/video/tos/useast2a/tos-useast2a-pve-0037-aiso/oE6CirezcInEtBQAnfnQbIDXjMUlVQUDPC5BGB/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2336&bt=1168&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=O2Y7O2loNjpnZWYzOTs3Z0Bpamg8czM6ZnU0aTMzZjgzM0BeMTI0MDYyXjMxMTVfNjEwYSNjLy5pcjRfZzNgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/dfc3d743c4dd0dc44a01f8e632675133/63f63e43/video/tos/useast2a/tos-useast2a-pve-0037c001-aiso/os58eCBEQPVPmnFtFbCuYoBpjyyNQneYzgDQAD/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2582&bt=1291&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ZDk7MzZlZzNlOWY8NjNmNEBpamg8czM6ZnU0aTMzZjgzM0BjYjAwNjItX14xMGM0LWNhYSNjLy5pcjRfZzNgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 2747016,
                "wm_size": 3035284,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7191153015233973019.mp3",
                "music_info": {
                    "id": "7191152998784043802",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7191153015233973019.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 18,
                    "album": ""
                },
                "play_count": 452,
                "digg_count": 20,
                "comment_count": 3,
                "share_count": 0,
                "download_count": 1,
                "create_time": 1674320780,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000ccnesnbc77u52d9tef50",
                "video_id": "7146912924576075035",
                "region": "VN",
                "title": "Lần đầu ra sân của ae Mor FC 🔥😎@Tussssss @Hoài Bùi @Nhun Nhun 🌹 @Cư dân MOR SOFTWARE  #footballtiktok ",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/9ba1ef5455ed41ffadc6b9e736f125ab_1664020345?x-expires=1677146400&x-signature=NpUi00b3p%2FJcxhaR25DP5xpdn2U%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/2dc5738818264391b0ab6390e5fa4585_1664020344~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=1cBz2Z9ZI8iPZHNCG83XVGab2JM%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 38,
                "play": "https://v16m.tiktokcdn.com/37a550f4eaf82006556dc65a6d18ce89/63f63e57/video/tos/useast2a/tos-useast2a-pve-0037c001-aiso/1bb0450e355c4a32867540ab23f4c938/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3246&bt=1623&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=Nmg1OmU2ZWk4M2dnM2Q7aEBpM2l3Zzg6ZnFoZjMzZjgzM0BjYV4yLjNjXmExYy9gYzM1YSMyYjYvcjRfcGtgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/17342997a147dc9dde598de926bbdc12/63f63e57/video/tos/useast2a/tos-useast2a-pve-0037-aiso/d59e3971ee8441afbfe172a73a2ac3b3/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3432&bt=1716&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=M2U5Mzs4ZWU4ZmZkO2c7Z0BpM2l3Zzg6ZnFoZjMzZjgzM0AtMDFjMC0tNjIxYzBeLjYxYSMyYjYvcjRfcGtgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 8092139,
                "wm_size": 8528252,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7146912988002470683.mp3",
                "music_info": {
                    "id": "7146912963025177370",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7146912988002470683.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 38,
                    "album": ""
                },
                "play_count": 323,
                "digg_count": 24,
                "comment_count": 7,
                "share_count": 0,
                "download_count": 1,
                "create_time": 1664020342,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000cbsfhobc77ueandutdv0",
                "video_id": "7131725770107522330",
                "region": "VN",
                "title": "Chủ tựcccccc 😎😎😎 #bienhinh #gentleman #veston",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/c02e6811b7014554be2a8b43738b48e0_1660484310?x-expires=1677146400&x-signature=Nhzo0eDUWWFdK9NZi2XpbRNQQ10%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/0056f10b550a4d2dbe56d794aa90c3e8_1660484307~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=%2FSXF8NktXAzLr1wTRR%2B5hPlsWss%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 5,
                "play": "https://v16m.tiktokcdn.com/b43e7bf3853b6cbaa8c5147e83d0a8d5/63f63e36/video/tos/useast2a/tos-useast2a-pve-0037c001-aiso/a442a53d3fcc465cb123233918cdf821/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=1776&bt=888&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=aDloOGllOmY1aGU8ZjdpNUBpM2d4cWg6ZnJpZTMzZjgzM0BhXmNhXjIwNmAxNDItMTIvYSNzcWFecjRfZXBgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/bb90b5ba4990265599e8a9b069ffe65d/63f63e36/video/tos/useast2a/tos-useast2a-pve-0037-aiso/e5b3e723b64b4f0eb6ea0604df423198/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2050&bt=1025&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NGhkNjY5NmhoNjwzZzozNUBpM2d4cWg6ZnJpZTMzZjgzM0BiNV5iYjRgNjMxLWE0MGBfYSNzcWFecjRfZXBgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 606902,
                "wm_size": 685929,
                "music": "https://sf16-ies-music-sg.tiktokcdn.com/obj/tiktok-obj/7113347355667073793.mp3",
                "music_info": {
                    "id": "7113347379155176194",
                    "title": "Bridget made this",
                    "play": "https://sf16-ies-music-sg.tiktokcdn.com/obj/tiktok-obj/7113347355667073793.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/0c1fe18ad76d2c8304547f31a5430624.jpeg?x-expires=1677146400&x-signature=trB80a7b8KYLHTYpbl8ZlAK%2FCYE%3D",
                    "author": "Tik Toker",
                    "original": true,
                    "duration": 13,
                    "album": ""
                },
                "play_count": 3074,
                "digg_count": 95,
                "comment_count": 4,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1660484305,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000cbemjtrc77u4nbdq12i0",
                "video_id": "7123968188232092955",
                "region": "VN",
                "title": "#happy #cute 💙🌹🚜 én énnnn ...",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/b3966c28a08c40eba852b7d3c3517d17_1658678107?x-expires=1677146400&x-signature=QrgwajD7IAgwrwGs%2Fyc7uAzcu94%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/6c782d819cb1489ca72f485c2f5eeb92_1658678106~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=%2Fa%2B1TkbpVjb7YLCnXN3bID0%2BNf4%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 10,
                "play": "https://v16m.tiktokcdn.com/991fab0ec3b964767f590046c55bb954/63f63e3b/video/tos/useast2a/tos-useast2a-pve-0037-aiso/eb31d0c7f6194b1499d11e8993362345/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=4644&bt=2322&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ZDk4ODc2ZTg0NzllZzwzOEBpMzV0ZTc6ZndwZTMzZjgzM0AvMzQzNDJfNS0xLi4xYV41YSNmLmFrcjRvZ2JgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/1faee7b511cba62984493d2f5abc3451/63f63e3b/video/tos/useast2a/tos-useast2a-pve-0037-aiso/7b4dc97a6e464ebca5978ba64c0e02ba/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=4930&bt=2465&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NGk0ZTUzOGZlO2Y7ZTVoM0BpMzV0ZTc6ZndwZTMzZjgzM0BjL2IzNjIzNWAxX2MvNl8wYSNmLmFrcjRvZ2JgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 3250741,
                "wm_size": 3413984,
                "music": "https://sf16-ies-music-va.tiktokcdn.com/obj/tos-useast2a-ve-2774/912cc3408d844e1fb6f89c36d3f05886",
                "music_info": {
                    "id": "7106732922043910939",
                    "title": "Đi Cùng Em (Speed Up)",
                    "play": "https://sf16-ies-music-va.tiktokcdn.com/obj/tos-useast2a-ve-2774/912cc3408d844e1fb6f89c36d3f05886",
                    "cover": "https://p16-amd-va.tiktokcdn.com/img/tos-useast2a-v-2774/82c070a917054d7a98d8b187d33d8456~c5_720x720.jpeg",
                    "author": "",
                    "original": false,
                    "duration": 10,
                    "album": ""
                },
                "play_count": 1244,
                "digg_count": 37,
                "comment_count": 11,
                "share_count": 2,
                "download_count": 0,
                "create_time": 1658678105,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000ca8u9trc77ucvf7bjntg",
                "video_id": "7102710811147226394",
                "region": "VN",
                "title": "Có những bàn thắng không thể không ăn mừng 🔥🔥 #football  #Soccer #sports",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/78ec649bc3ec4a008acd9e1cbffa44b0_1653728732?x-expires=1677146400&x-signature=5Gr%2Bep43ZkMR6yE%2Bh2O5UXvpTuA%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/35de35bd9242412ba5870ed43ace9412_1653728732~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=V0XrDCsNYmQ3Zhg%2F1x871Qazayw%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 11,
                "play": "https://v16m.tiktokcdn.com/840c669404c6e716067ece0f3f6cc295/63f63e3c/video/tos/useast2a/tos-useast2a-pve-0037-aiso/d55c5006065742778cccafcd19773499/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2688&bt=1344&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=aWZlZzdpNzVoOWU8ODk4OEBpanFlaWY6Znd4ZDMzZjgzM0BhNjAzNjIyXzYxNWFfYjVgYSNxZzRzcjRvNjVgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/635ee167160457fae890f007e4385a35/63f63e3c/video/tos/maliva/tos-maliva-ve-0068c800-us/14d75f6e44f244b9a4101cd879a09641/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2906&bt=1453&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=MzQ2ZjppOjszMzc3OTg2aEBpanFlaWY6Znd4ZDMzZjgzM0BiLjFjYV81NTAxMmEvYTM0YSNxZzRzcjRvNjVgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 1949220,
                "wm_size": 2085754,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7102710815899274011.mp3",
                "music_info": {
                    "id": "7102710797847104283",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7102710815899274011.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 11,
                    "album": ""
                },
                "play_count": 574,
                "digg_count": 35,
                "comment_count": 1,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1653728730,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000ca6f6cjc77u0v03erl6g",
                "video_id": "7101318967091891483",
                "region": "VN",
                "title": "Khi còn khoẻ còn trẻ, hãy cứ đi 🔥🔥 #travel #youngerme",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/ea3100114b0a4dfb9a2ecae4cf84cfa1_1653404668?x-expires=1677146400&x-signature=Y4iN5xHOimWfrWozyxuN7lK4ghY%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/a862ebe7ba684fd894d2030786097b69_1653404668~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=M5mkn2BXVDA4ywyXxM6m8aSCUMM%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 59,
                "play": "https://v16m.tiktokcdn.com/9bccb6dbdaba32fda64ff857b42737bf/63f63e6c/video/tos/useast2a/tos-useast2a-pve-0037-aiso/8d1f0ae1d28f40b4a14a34ea16325e98/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=5462&bt=2731&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=aGY3MzgzZmQ3ZzM4NTg3ZkBpam9oMzM6ZmZpZDMzZjgzM0AvLWNjLjYyNTIxY2BiMzIvYSMzbzBzcjRnMzNgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/fcf052e1f17237e73db1f9cd810c4ed1/63f63e6c/video/tos/maliva/tos-maliva-ve-0068c800-us/b4dfba5725e346dc92a69184ae006e2c/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=5624&bt=2812&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=OWU6M2Q8ZzQ0aDU0ZGY4NUBpam9oMzM6ZmZpZDMzZjgzM0AyYjQ2YzNgXl4xLmMwNDAwYSMzbzBzcjRnMzNgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 20919660,
                "wm_size": 21500139,
                "music": "https://sf16-ies-music-va.tiktokcdn.com/obj/tos-useast2a-ve-2774/b96a2369c2264799a0a1d6db5a3cf30c",
                "music_info": {
                    "id": "6751809785441552385",
                    "title": "Because of You",
                    "play": "https://sf16-ies-music-va.tiktokcdn.com/obj/tos-useast2a-ve-2774/b96a2369c2264799a0a1d6db5a3cf30c",
                    "cover": "https://p16-amd-va.tiktokcdn.com/img/tos-useast2a-v-2774/fba41efc6573441595c1f9ee1fa09465~c5_720x720.jpeg",
                    "author": "",
                    "original": false,
                    "duration": 60,
                    "album": "Best of Both Worlds"
                },
                "play_count": 381,
                "digg_count": 31,
                "comment_count": 0,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1653404666,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000ca0i8sbc77uauka4mqag",
                "video_id": "7097995102475341083",
                "region": "VN",
                "title": "Những giây phút thật tuyệt vời ❤️ cảm ơn những người bạn của tôi    #friends #happyholidays",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/71bfbf9eaf954628ae7b3e9ebd4d6500_1652630772?x-expires=1677146400&x-signature=wawgrdDsvZkAs2lmQkkz7artA%2F4%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/55486a4afc124eb3980691ea95fed8d9_1652630771~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=BMknj1ZQ0fhibjsKQlhGlnnvbcw%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 61,
                "play": "https://v16m.tiktokcdn.com/4af2c9c353691a167c3e797b35c63389/63f63e6e/video/tos/useast2a/tos-useast2a-pve-0037c001-aiso/c8e71be6202e4c5787fb62486d299e29/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2526&bt=1263&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NWc7PGQ6ODM5NWhkNWk3M0BpanQ3bmQ6ZnZsZDMzZjgzM0A1YjU0Yi0wXi8xL2BgLi02YSNeal5ycjRfNS1gLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/bf02911938f492eb405708908e4a0029/63f63e6e/video/tos/maliva/tos-maliva-ve-0068c800-us/a030f99070a94d36ac2ce9606aa9d30c/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2678&bt=1339&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NDc5aWY7aWc0ZjdnNjo0ZUBpanQ3bmQ6ZnZsZDMzZjgzM0A2MV8xX2NgXmExMjIvL14tYSNeal5ycjRfNS1gLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 9935779,
                "wm_size": 10510447,
                "music": "https://sf16-ies-music-va.tiktokcdn.com/obj/tos-useast2a-ve-2774/68759f8c47e041e187c9c9455fea92cf",
                "music_info": {
                    "id": "6846113000542177281",
                    "title": "Bài Ka Tuổi Trẻ (feat. Vũ Bùi Thu Thủy, Linh Cáo & Mel G)",
                    "play": "https://sf16-ies-music-va.tiktokcdn.com/obj/tos-useast2a-ve-2774/68759f8c47e041e187c9c9455fea92cf",
                    "cover": "https://p16-amd-va.tiktokcdn.com/img/tos-useast2a-v-2774/86e304becbe642e08ed285b4e22d08ae~c5_720x720.jpeg",
                    "author": "",
                    "original": false,
                    "duration": 60,
                    "album": "Bài Ka Tuổi Trẻ (feat. Vũ Bùi Thu Thủy, Linh Cáo & Mel G)"
                },
                "play_count": 920,
                "digg_count": 57,
                "comment_count": 8,
                "share_count": 0,
                "download_count": 1,
                "create_time": 1652630770,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c9o9fkbc77u2o53cqo40",
                "video_id": "7093337017823530267",
                "region": "VN",
                "title": "Ơ 😳 Mai phải đi làm rồi à 🙄🥺 #holiday #chill",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/a94631a6bc0645cb9e2639903682d672_1651546225?x-expires=1677146400&x-signature=dyT29qjOAIrd9mA%2Fqtn%2BanNEvC0%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/d0994a680e744f10affbcb912e60c74d_1651546225~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=IYmKTgMTnuU8tFPrdKaPFn3F%2FxU%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 18,
                "play": "https://v16m.tiktokcdn.com/4bdc6bdf91a5b095946a687142d8c234/63f63e42/video/tos/useast2a/tos-useast2a-pve-0037-aiso/7cec777b59c0484e9307d60168109c9a/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2682&bt=1341&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=OmVkZTs5NDRoODM0NDw4ZkBpM3JmODU6Zm48PDMzZjgzM0AwLzIwLTQzNi8xNjUuMC0wYSMxbjBscjRfY2xgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/f8031b8136ab4e4852f1c67d2e40cba7/63f63e42/video/tos/maliva/tos-maliva-ve-0068c800-us/86f99299c08d4ffa8d3b50505fcf8f2c/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2842&bt=1421&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=aTM7OGQ3ODdnZmg7OzllZEBpM3JmODU6Zm48PDMzZjgzM0A2MV41MS02NS4xM180NTM0YSMxbjBscjRfY2xgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 3109095,
                "wm_size": 3273271,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7093337028674194202.mp3",
                "music_info": {
                    "id": "7093337015692823323",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7093337028674194202.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 17,
                    "album": ""
                },
                "play_count": 497,
                "digg_count": 40,
                "comment_count": 2,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1651546224,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c9inmtjc77ud8hjoc61g",
                "video_id": "7090209391260994843",
                "region": "VN",
                "title": "Dành cho em hết đấy 😳 #passion  #alone #happy",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/f177ff6ca1a24221bd11b24844a0673c_1650818019?x-expires=1677146400&x-signature=FdDOd74ZPop%2BPT4ZkhBjl87wpmU%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/b9814b661934416aac72a51f77ca0ce6_1650818018~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=XgZS2zz9OWP7lGrADIjDZFXaRM8%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 20,
                "play": "https://v16m.tiktokcdn.com/afea70c4f7a63f037dd7a3078b8de62f/63f63e44/video/tos/useast2a/tos-useast2a-pve-0037-aiso/453530aa00a84d59a2d39202f4fb8de2/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2034&bt=1017&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=PDUzOWRoNzw0Ozc4aDU3ZUBpajlya2c6ZndxPDMzZjgzM0BhLi9gY14zNjExNGNiMjJiYSMuYGc1cjRnamZgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/712f418d4388edc2ac396b847ff9f2cd/63f63e44/video/tos/maliva/tos-maliva-ve-0068c800-us/ab8bcece9d9e46ddac771b700e5904a1/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2380&bt=1190&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=Z2lpNWg2Njk8ZDQzPDo8NkBpajlya2c6ZndxPDMzZjgzM0AtLzU1MWEyXmAxYi02MTA1YSMuYGc1cjRnamZgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 2621404,
                "wm_size": 3048735,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7090209396000672538.mp3",
                "music_info": {
                    "id": "7090209384894188314",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7090209396000672538.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 20,
                    "album": ""
                },
                "play_count": 2316,
                "digg_count": 220,
                "comment_count": 34,
                "share_count": 0,
                "download_count": 1,
                "create_time": 1650818017,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c9dd55rc77u2tujj4elg",
                "video_id": "7087209119647534362",
                "region": "VN",
                "title": "Cháy chưa nhỉ 🔥🔥😁 #sports #workout",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/74cc20138858466ba0c2b410f88b7e8d_1650119463?x-expires=1677146400&x-signature=chWMuyj07POwmxk51sH%2BXpuFpZg%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/a3e22d69751d4e6dbe581c70a38c0f1e_1650119462~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=FbQ5HZRocV%2F5qBGhc6Gt4OCPPMg%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 8,
                "play": "https://v16m.tiktokcdn.com/88f03fc88594da1a44f0907b30bec432/63f63e39/video/tos/useast2a/tos-useast2a-pve-0037-aiso/5d76981f13b445f08741bc581b0c2c41/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3216&bt=1608&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ZTc7ZmhnOjZnOjg8NDk4ZkBpamhteDU6ZjhnPDMzZjgzM0AyMTBfYTY0Ni8xMTViMTYwYSNpMWdxcjRvMmFgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/81da06ee1aa0813621ec76c8e9310d66/63f63e39/video/tos/maliva/tos-maliva-ve-0068c800-us/d08b3ceebe124b859b7ea48830f7ff85/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3438&bt=1719&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=MzZpaGg5Z2c7M2Y2ZzVoO0BpamhteDU6ZjhnPDMzZjgzM0AuMS0vNWNeXy8xMF5fLTAxYSNpMWdxcjRvMmFgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 1716118,
                "wm_size": 1808526,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7083519423415323419.mp3",
                "music_info": {
                    "id": "7083519400011500314",
                    "title": "original sound - izn_chii",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7083519423415323419.mp3",
                    "cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-avt-0068-giso/b31c8d238939016137b648a47c36a3dd~c5_1080x1080.jpeg?x-expires=1677146400&x-signature=%2B%2BdDf%2FulV3JegdsogUuItu11O8M%3D",
                    "author": "𝑵𝒈𝒖𝒚𝒆𝒏 𝑴inh 𝑪𝒉𝒊👀",
                    "original": true,
                    "duration": 8,
                    "album": ""
                },
                "play_count": 11064,
                "digg_count": 1572,
                "comment_count": 46,
                "share_count": 5,
                "download_count": 17,
                "create_time": 1650119461,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c9a4u1rc77uanl2uftbg",
                "video_id": "7085375040006507802",
                "region": "VN",
                "title": "Hết lễ rồi lại đi thôi ... #runningman   #quehuong",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/fdd286b4969f4a55812a73313ca7e500_1649692435?x-expires=1677146400&x-signature=V1OE1m2fxZwDdy5Q83m3oHpeOEo%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/d35539ceab044e58ade50bfddf17436c_1649692434~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=NQ%2FsR8LCnnov7WCUPrzNM%2F3l0c0%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 27,
                "play": "https://v16m.tiktokcdn.com/a08a044e6e84d536c094274820686a1b/63f63e4c/video/tos/useast2a/tos-useast2a-pve-0037c001-aiso/0544a9859b174d78b3a5acb97a6d5de6/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3044&bt=1522&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=Njc7ZGk2Njo0PDs2PGY3NEBpand4b2Q6ZjQ3PDMzZjgzM0BiXjAtYjQtXzExLl5hXy4tYSNfYy9rcjRvcl5gLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/a63f77c64ad4b9ecb55bba80af689815/63f63e4c/video/tos/maliva/tos-maliva-ve-0068c800-us/b0715efd286d4ae3ba2770d415e82f32/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3218&bt=1609&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=OmQ3OWc0OTo6aGg5ZTY8PEBpand4b2Q6ZjQ3PDMzZjgzM0A1MTFjMS5jXzAxY2A0Ni0zYSNfYy9rcjRvcl5gLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 5361599,
                "wm_size": 5645014,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7085375072369658650.mp3",
                "music_info": {
                    "id": "7085375057761028891",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7085375072369658650.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 27,
                    "album": ""
                },
                "play_count": 32169,
                "digg_count": 1886,
                "comment_count": 60,
                "share_count": 4,
                "download_count": 9,
                "create_time": 1649692432,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c97ga1rc77u1epj0532g",
                "video_id": "7083886635141680411",
                "region": "VN",
                "title": "Thành phố Hoa - Lệ #hanoi #deep",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/d584447292854e5297c3a9d02b158c90_1649345887?x-expires=1677146400&x-signature=wWg7OjQUC0ti0o2o2emAD3zZAWE%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/48d27be5a63b43468e5dc344096af209_1649345887~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=z6cwzrzSelmq7UHcFYmWAvLa3QE%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 22,
                "play": "https://v16m.tiktokcdn.com/4979db7ce4712b05747c4147aefb6b2a/63f63e47/video/tos/useast2a/tos-useast2a-pve-0037-aiso/f2d1a3ae18804472afea26d55f6404fd/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3784&bt=1892&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NDtlaTU2MzQ7NDY8ZDw8OEBpajYzczQ6ZjRqPDMzZjgzM0BgNjExLjYyXl8xXy00X2BjYSMvMmdicjRvXjRgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/fbd8cf489c5afdae25237340a5f82eea/63f63e47/video/tos/maliva/tos-maliva-ve-0068c800-us/ed071c9be5234c5580f8648d558b7f3c/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=4022&bt=2011&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ODo4OzYzZmc5NjhpOTNnNUBpajYzczQ6ZjRqPDMzZjgzM0BfM2MwMDQtXzMxLjM2MC4vYSMvMmdicjRvXjRgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 5376247,
                "wm_size": 5686458,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7021702889991113498.mp3",
                "music_info": {
                    "id": "7021702974929931035",
                    "title": "original sound - khanhlynhh_21",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7021702889991113498.mp3",
                    "cover": "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1594805258216454~c5_1080x1080.jpeg?x-expires=1677146400&x-signature=8%2Bh2RGq16End0PvDywy2DU5%2Bpig%3D",
                    "author": "user74003186682",
                    "original": true,
                    "duration": 21,
                    "album": ""
                },
                "play_count": 1258,
                "digg_count": 99,
                "comment_count": 0,
                "share_count": 0,
                "download_count": 4,
                "create_time": 1649345885,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c946vu3c77u0duiuq5ig",
                "video_id": "7082034228162088218",
                "region": "VN",
                "title": "Tuổi thanh xuân của bạn thế nào ? #tuoithanhxuan #chil #22",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/e2859b517fa748f0a06188cc61172746_1650727298?x-expires=1677146400&x-signature=Bj%2BC8vaeTuejzTdeZDy%2BXyWobXI%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/c495edad70f640ab8e96a4a8229bf27a_1648914593~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=%2Bq3oq2Ptht%2FBaDKBtG%2BR75h3%2F%2F0%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 36,
                "play": "https://v16m.tiktokcdn.com/d22cc4003be2fa9fb00fe315cd8c93dd/63f63e54/video/tos/useast2a/tos-useast2a-pve-0037c001-aiso/25e478a23c2e4e2cb264753fcc47885f/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3382&bt=1691&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ZjdpNzZnaDo2aWZoaDdlNEBpajh4eDM6Zng5PDMzZjgzM0A0NWJiLzBfNjMxLmIzMjJfYSNmbmZhcjQwczFgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/42f44ee2f30ca93d59c3979a5d1529e7/63f63e54/video/tos/maliva/tos-maliva-ve-0068c800-us/8512f264de1e430ca6214b4f9e517b61/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=3516&bt=1758&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=MzU2OTRpM2U3aTdmNmRmN0Bpajh4eDM6Zng5PDMzZjgzM0AuMTY2MjU0Xy8xLjY2Ml4tYSNmbmZhcjQwczFgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 7803956,
                "wm_size": 8083415,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7089819146728393499.mp3",
                "music_info": {
                    "id": "7082034238219914010",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7089819146728393499.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 35,
                    "album": ""
                },
                "play_count": 826,
                "digg_count": 78,
                "comment_count": 1,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1648914588,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c8m8rubc77uc61c2f0s0",
                "video_id": "7074186010891914522",
                "region": "VN",
                "title": "Câu chuyện không của riêng ai 😥 #football  #haucovid #funny",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/b937e1837e144ca0a1cb603cb32ff370_1647087285?x-expires=1677146400&x-signature=Zz9IoJrAru%2BjLlgGUUH98giknGM%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/0245245b577c49b3a1aa680fe2e795c6_1647087286~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=ZQuwmrbtyQfj2gs76Ty2ks0hQII%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 67,
                "play": "https://v16m.tiktokcdn.com/36ff8e8ef2e2282f8fc64f394af93ebb/63f63e74/video/tos/useast2a/tos-useast2a-pve-0037-aiso/a25fcbeec9024cd38188952bb7faa464/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=1678&bt=839&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NTVlZmc2NmZpNzk6ZzlpPEBpMzM1NGY6Zng7OzMzZjgzM0A0MTYvL19jNS4xL180YjJiYSNwY2AzcjRfb2pgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/c3edc3b1183eda3acb0c7de131a74769/63f63e74/video/tos/maliva/tos-maliva-ve-0068c800-us/2d8e334f8706423796874e07ee2d9849/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=1918&bt=959&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NDgzPGhpaWQ5OTo3ZDw0NUBpMzM1NGY6Zng7OzMzZjgzM0AvNGMzMGJeXmAxMl9iLi5fYSNwY2AzcjRfb2pgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 7305918,
                "wm_size": 8333567,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7074186061517261594.mp3",
                "music_info": {
                    "id": "7074186069524744986",
                    "title": "original sound - trg.minhdo",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7074186061517261594.mp3",
                    "cover": "https://p16-sign-sg.tiktokcdn.com/aweme/1080x1080/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f.jpeg?x-expires=1677146400&x-signature=y8wR4NrHb%2B4fQYR6G36rZo0Je0s%3D",
                    "author": "Minh Đô",
                    "original": true,
                    "duration": 67,
                    "album": ""
                },
                "play_count": 42922,
                "digg_count": 1407,
                "comment_count": 52,
                "share_count": 1,
                "download_count": 4,
                "create_time": 1647087283,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c8b3mn3c77u6dctkqpsg",
                "video_id": "7067902509741903131",
                "region": "VN",
                "title": "Người khoẻ như voi mà vẫn dương tính 😒 #covid19  #testcovid19 #ghetvl",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/eddcd18ce0e14210acec586049df654c_1645624292?x-expires=1677146400&x-signature=kyMxeo2kpXz7z6U6NGcoXEicnvg%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/191bd841a9014e64b563ddabdf1b999e_1645624292~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=Q%2FiY7R3L6Rv136iaBXjXhFReUWE%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 7,
                "play": "https://v16m.tiktokcdn.com/1b19d286c5627c4a8ec75b1eada8bc08/63f63e38/video/tos/useast2a/tos-useast2a-pve-0037-aiso/d65db76ac8414a898dd88c0da52ed2a4/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=1624&bt=812&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ZTxnNWQzN2g3ODZpZjw0ZUBpanNuZjk6ZnE2OzMzZjgzM0AuYi1jNTAuXzQxMTZgNTZgYSNwbnFhcjQwal9gLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/544b32d088a03444fae1d7d3b07792ae/63f63e38/video/tos/maliva/tos-maliva-ve-0068c800-us/238dc8a1434f4ac9933f7cb71e32f263/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=1934&bt=967&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ZmQ8NTc0aTc0OjU8ZGU7OUBpanNuZjk6ZnE2OzMzZjgzM0AzYDZhY2BeNTYxNmEwXmJiYSNwbnFhcjQwal9gLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 760415,
                "wm_size": 891404,
                "music": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7054899257567955738.mp3",
                "music_info": {
                    "id": "7054899260768619290",
                    "title": "original sound - boban.huppy.pmy",
                    "play": "https://sf16-ies-music.tiktokcdn.com/obj/ies-music-aiso/7054899257567955738.mp3",
                    "cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-avt-0068-giso/db185137191c4c41426756d53ce3ffc8~c5_1080x1080.jpeg?x-expires=1677146400&x-signature=YJVQ0U3UaA97rSiScYljEToNwhA%3D",
                    "author": "huppy",
                    "original": true,
                    "duration": 5,
                    "album": ""
                },
                "play_count": 43718,
                "digg_count": 774,
                "comment_count": 84,
                "share_count": 17,
                "download_count": 40,
                "create_time": 1645624291,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v10025g50000c76mvlbc77u393mktn10",
                "video_id": "7047414443432611074",
                "region": "VN",
                "title": "say bye 2021 👋🏻 cố gắng cho 2022 nào ❤️ #goodbye2021 #MTVCM #kyniemdep #tuoitre",
                "cover": "https://p16-sign-sg.tiktokcdn.com/obj/tos-alisg-p-0037/709f274f9ad14080a9d56fda1c7ac26c_1640854043?x-expires=1677146400&x-signature=DX3%2FnnuJ1kWYKlDALwfW81oAXEs%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-p-0037/b72568f538d14dc4a2fa03ac83950e1e_1640854043~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=pi8lZEcXmrHOKJNbfVwY%2B504HTc%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 16,
                "play": "https://v16m.tiktokcdn.com/99a4fb0fe44d6b932a3ef19c0e6b87c8/63f63e41/video/tos/alisg/tos-alisg-pve-0037/cd095d0ed49c463dae7ef543aa2a2b01/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2994&bt=1497&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=NTY2ZTU2OjhpZzo5OmU0OEBpM3FuNjY6Zm9wOjMzODgzNEAuXjM1YjBgNl8xLzBfNDU2YSMucWo2cjRfczNgLS1kLy1zcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/c2e95d4a02dfbea3f5af3ee343584ba1/63f63e41/video/tos/alisg/tos-alisg-pve-0037/77a7f018e5c24162953845d109fa09a1/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=2812&bt=1406&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=aDtnNGY3ODpkZDdnZzc8PEBpM3FuNjY6Zm9wOjMzODgzNEA0NV8zNS8tXjQxMTY2NmJeYSMucWo2cjRfczNgLS1kLy1zcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 3118561,
                "wm_size": 2908804,
                "music": "https://sf16-ies-music-va.tiktokcdn.com/obj/musically-maliva-obj/7038612011479403269.mp3",
                "music_info": {
                    "id": "7038611997868755718",
                    "title": "original sound - eduardawl__",
                    "play": "https://sf16-ies-music-va.tiktokcdn.com/obj/musically-maliva-obj/7038612011479403269.mp3",
                    "cover": "https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/a19e895a87d9be17778f2c9b3e7bbd49~c5_1080x1080.jpeg?x-expires=1677146400&x-signature=qJ6XjGEcfPW4HAc8MgXh8W9WphU%3D",
                    "author": "dudaaa",
                    "original": true,
                    "duration": 15,
                    "album": ""
                },
                "play_count": 2101,
                "digg_count": 102,
                "comment_count": 0,
                "share_count": 1,
                "download_count": 2,
                "create_time": 1640854042,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            },
            {
                "aweme_id": "v0f025gc0000c530edjc77ubfhk6cfc0",
                "video_id": "7009298959013317915",
                "region": "VN",
                "title": "Birthday 17/09 #birthday #TikTokFashUP",
                "cover": "https://p16-sign-va.tiktokcdn.com/obj/tos-useast2a-p-0037-aiso/8d793d88c5d34b1d81b65b83dcdc32bd_1631979594?x-expires=1677146400&x-signature=ageIvCXxxNWnsGTLzRigZdKG7uE%3D&s=PUBLISH&se=false&sh=&sc=dynamic_cover&l=2023022210092001018907404632000DF1",
                "origin_cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-p-0037-aiso/47a0423b03f54af7a3d351b3d828ce4a_1631979593~tplv-tiktokx-360p.webp?x-expires=1677146400&x-signature=gW9GIV5UTeSbQWMH8iurHx0R19g%3D&s=PUBLISH&se=false&sh=&sc=feed_cover&l=2023022210092001018907404632000DF1",
                "duration": 60,
                "play": "https://v16m.tiktokcdn.com/7429d7b7b2e4e88c1fb92110413d04d5/63f63e6d/video/tos/useast2a/tos-useast2a-pve-0037-aiso/ab64afb0ec5f44a4b9cd4cc3a9af92fd/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=656&bt=328&cs=0&ds=6&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=ODQ8O2U8NzVoPGY1NGQ8OkBpM2k5a2U6ZmczODMzZjgzM0AwXjMzNC00NjQxLl4zLzQvYSNgYGhjcjRnYjBgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "wmplay": "https://v16m.tiktokcdn.com/a136b1dba2c211b7a8e6712d6f20b2b7/63f63e6d/video/tos/maliva/tos-maliva-ve-0068c800-us/40aca592261d42a48f203fdb0151d9e7/?a=1233&ch=0&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=870&bt=435&cs=0&ds=3&ft=K53eaPPT2eCj6LBM6BRfu93JQjM5SqE3H-z7TGbR&mime_type=video_mp4&qs=0&rc=OWVkaDU5O2ZnOmhoNWg3M0BpM2k5a2U6ZmczODMzZjgzM0AwYzEvYzVgNTQxMS0tMzZeYSNgYGhjcjRnYjBgLS1kL2Nzcw%3D%3D&l=2023022210092001018907404632000DF1&btag=80000&cc=3",
                "size": 2541246,
                "wm_size": 3356603,
                "music": "https://sf16-ies-music-sg.tiktokcdn.com/obj/tiktok-obj/6956626968431446786.mp3",
                "music_info": {
                    "id": "6956627017223637762",
                    "title": "original sound - phamttouyen198",
                    "play": "https://sf16-ies-music-sg.tiktokcdn.com/obj/tiktok-obj/6956626968431446786.mp3",
                    "cover": "https://p16-sign-va.tiktokcdn.com/tos-useast2a-avt-0068-giso/5b9969b9367e2f071f76bc1b671eeef0~c5_1080x1080.jpeg?x-expires=1677146400&x-signature=GcqwAl8T7WWsJ5Tkgekeeq6jgKA%3D",
                    "author": "𝒫𝓉𝓉𝓊𝓎𝑒𝓃",
                    "original": true,
                    "duration": 54,
                    "album": ""
                },
                "play_count": 1749,
                "digg_count": 112,
                "comment_count": 6,
                "share_count": 0,
                "download_count": 0,
                "create_time": 1631979589,
                "author": {
                    "id": "6553900257422852098",
                    "unique_id": "trg.minhdo",
                    "nickname": "Minh Đô",
                    "avatar": "https://p16-sign-sg.tiktokcdn.com/tos-alisg-avt-0068/39cfc47d7fd99ea5ba40a0d633b4239f~c5_300x300.jpeg?x-expires=1677146400&x-signature=%2BUwTrPRjl06DsShQUB3RNR23PDQ%3D"
                }
            }
        ],
        "cursor": "1631979589000",
        "hasMore": false
    }
    };
  }
}
