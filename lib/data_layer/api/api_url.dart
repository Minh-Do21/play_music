enum HTTPRequestMethods { get, post, put, patch, delete }

enum ApiURL {
  searchSong,
}

// Handle this case.
extension ApiURLState on ApiURL {
  String get path {
    switch (this) {
      case ApiURL.searchSong:
        return 'api/v2/search/multi';
      default:
        return 'undefine';
    }
  }

  HTTPRequestMethods? get methods {
    switch (this) {
      case ApiURL.searchSong:
        return HTTPRequestMethods.get;

      //- API Using Post Method
        return HTTPRequestMethods.post;

      // - API Using patch Method
      // case ApiURL.updateUserProfile:
      // return HTTPRequestMethods.patch;

      // - API Using delete Method
      // case ApiURL.cancelDeal:
      //   return HTTPRequestMethods.delete;
      default:
        return null;
    }
  }
}
