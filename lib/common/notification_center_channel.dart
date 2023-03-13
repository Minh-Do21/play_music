enum NOTIFICATION_CENTER_CHANNEL {
  SCAN_NFC,
  LOG_OUT,
  RELOAD_HISTORY,
}

extension NOTIFICATION_CENTER_CHANNEL_VALUE on NOTIFICATION_CENTER_CHANNEL {
  String get channel {
    switch (this) {
      case NOTIFICATION_CENTER_CHANNEL.SCAN_NFC:
        return 'scan_nfc';
      case NOTIFICATION_CENTER_CHANNEL.LOG_OUT:
        return 'log_out';  
      case NOTIFICATION_CENTER_CHANNEL.RELOAD_HISTORY:
        return 'reload_history';
    }
  }
}
