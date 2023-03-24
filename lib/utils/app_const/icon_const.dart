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
  ic_next,
  ic_pause,
  ic_play,
  ic_pre,
  ic_search,
  ic_down,
  ic_more,
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
      case ICON_CONST.ic_next:
        return 'assets/icons/ic_next.svg';
      case ICON_CONST.ic_pause:
        return 'assets/icons/ic_pause.svg';
      case ICON_CONST.ic_play:
        return 'assets/icons/ic_play.svg';
      case ICON_CONST.ic_pre:
        return 'assets/icons/ic_pre.svg';
      case ICON_CONST.ic_search:
        return 'assets/icons/ic_search.svg';
      case ICON_CONST.ic_down:
        return 'assets/icons/ic_down.svg';
      case ICON_CONST.ic_more:
        return 'assets/icons/ic_more.svg';
      default:
        return '';
    }
  }
}