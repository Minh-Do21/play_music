enum ICON_CONST {
  ic_home,
  ic_home_selected,
  ic_friend,
  ic_friend_selected,
  ic_message,
  ic_message_selected,
  ic_profile,
  ic_profile_selected,
  ic_back,
  ic_error,
  ic_success,
  ic_edit_video,
  ic_search,
  ic_live,
  ic_plus,
  ic_heart,
  ic_comment,
  ic_save,
  ic_share,
  ic_close,
  ic_menu,
  ic_qr_code,
  ic_youtube,
  ic_my_videos,
  ic_lock,
  ic_my_save,
  ic_exchange,
  ic_my_heart,
  ic_play_line,
  ic_logout,
  ic_back_simple,
  ic_border_qr_code,
  ic_scan_qr_code,
  ic_flash,
}

// ignore: camel_case_extensions
extension ICON_CONST_VALUE on ICON_CONST {
  String get path {
    switch (this) {
      case ICON_CONST.ic_home:
        return 'assets/icons/ic_home.svg';
      case ICON_CONST.ic_home_selected:
        return 'assets/icons/ic_home_selected.svg';
      case ICON_CONST.ic_friend:
        return 'assets/icons/ic_friend.svg';
      case ICON_CONST.ic_friend_selected:
        return 'assets/icons/ic_friend_selected.svg';
      case ICON_CONST.ic_message:
        return 'assets/icons/ic_message.svg'; 
      case ICON_CONST.ic_message_selected:
        return 'assets/icons/ic_message_selected.svg';
      case ICON_CONST.ic_profile:
        return 'assets/icons/ic_profile.svg';
      case ICON_CONST.ic_profile_selected:
        return 'assets/icons/ic_profile_selected.svg';
      case ICON_CONST.ic_back:
        return 'assets/icons/ic_back.svg';
      case ICON_CONST.ic_error:
        return 'assets/icons/ic_error.svg';
      case ICON_CONST.ic_success:
        return 'assets/icons/ic_success.svg';
      case ICON_CONST.ic_edit_video:
        return 'assets/icons/ic_edit_video.svg';
      case ICON_CONST.ic_search:
        return 'assets/icons/ic_search.svg';
      case ICON_CONST.ic_live:
        return 'assets/icons/ic_live.svg';
      case ICON_CONST.ic_plus:
        return 'assets/icons/ic_plus.svg';
      case ICON_CONST.ic_heart:
        return 'assets/icons/ic_heart.svg';
      case ICON_CONST.ic_comment:
        return 'assets/icons/ic_comment.svg';
      case ICON_CONST.ic_save:
        return 'assets/icons/ic_save.svg';
      case ICON_CONST.ic_share:
        return 'assets/icons/ic_share.svg';
      case ICON_CONST.ic_close:
        return 'assets/icons/ic_close.svg';
      case ICON_CONST.ic_menu:
        return 'assets/icons/ic_menu.svg';
      case ICON_CONST.ic_qr_code:
        return 'assets/icons/ic_qr_code.svg';
      case ICON_CONST.ic_youtube:
        return 'assets/icons/ic_youtube.svg';
      case ICON_CONST.ic_my_videos:
        return 'assets/icons/ic_my_videos.svg';
      case ICON_CONST.ic_lock:
        return 'assets/icons/ic_lock.svg';
      case ICON_CONST.ic_my_save:
        return 'assets/icons/ic_my_save.svg';
      case ICON_CONST.ic_exchange:
        return 'assets/icons/ic_exchange.svg';
      case ICON_CONST.ic_my_heart:
        return 'assets/icons/ic_my_heart.svg';
      case ICON_CONST.ic_play_line:
        return 'assets/icons/ic_play_line.svg';
      case ICON_CONST.ic_logout:
        return 'assets/icons/ic_logout.svg';
      case ICON_CONST.ic_back_simple:
        return 'assets/icons/ic_back_simple.svg';
      case ICON_CONST.ic_border_qr_code:
        return 'assets/icons/ic_border_qr_code.svg';
      case ICON_CONST.ic_scan_qr_code:
        return 'assets/icons/ic_scan_qr_code.svg';
      case ICON_CONST.ic_flash:
        return 'assets/icons/ic_flash.svg';
      default:
        return '';
    }
  }
}
