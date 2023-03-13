class PageParams {
  static const int DEFAULT_PAGE_SIZE = 20;
  final int? page;
  final int? pageSize;

  final String? search;

  PageParams({this.page, this.pageSize = DEFAULT_PAGE_SIZE, this.search});

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['page-size'] = pageSize;
    if (search != null) {
      data['search'] = search;
    }
    return data;
  }
}
