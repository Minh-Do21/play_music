enum IMAGE_CONST {
  logo,
  playing,
  stop_play,
}

// ignore: camel_case_extensions
extension IMAGE_CONST_VALUE on IMAGE_CONST {
  String get path {
    switch (this) {
      case IMAGE_CONST.logo:
        return 'assets/images/logo_app.png';
      case IMAGE_CONST.playing:
        return 'assets/images/playing.gif';
      case IMAGE_CONST.stop_play:
        return 'assets/images/stop_play.png';
      default:
        return '';
    }
  }
}
