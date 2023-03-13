enum IMAGE_CONST {
  logo,
  image_edit_video,
  image_tape_disc,
}

// ignore: camel_case_extensions
extension IMAGE_CONST_VALUE on IMAGE_CONST {
  String get path {
    switch (this) {
      case IMAGE_CONST.logo:
        return 'assets/images/logo_app.png';
      case IMAGE_CONST.image_edit_video:
        return 'assets/images/image_edit_video.png';
      case IMAGE_CONST.image_tape_disc:
        return 'assets/images/image_tape_disc.png';
      default:
        return '';
    }
  }
}
