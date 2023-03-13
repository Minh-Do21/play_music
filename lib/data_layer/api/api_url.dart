enum HTTPRequestMethods { get, post, put, patch, delete }

enum ApiURL {
  getVideoTrend,
  getCommentsOfVideo,
  getUserInfo,
  getVideoUserPost,
}

// Handle this case.
extension ApiURLState on ApiURL {
  String get path {
    switch (this) {
      case ApiURL.getVideoTrend:
        return 'feed/list';
      case ApiURL.getCommentsOfVideo:
        return 'comment/list';
      case ApiURL.getUserInfo:
        return 'user/info';
      case ApiURL.getVideoUserPost:
        return 'user/posts';
      default:
        return 'undefine';
    }
  }

  HTTPRequestMethods? get methods {
    switch (this) {
      case ApiURL.getVideoTrend:
      case ApiURL.getCommentsOfVideo:
      case ApiURL.getUserInfo:
      case ApiURL.getVideoUserPost:
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
