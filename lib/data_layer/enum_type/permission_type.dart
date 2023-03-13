enum PermissionType {
  NOTIFYCATION,
  EMAIL,
  LOCATION,
}

extension DiscountTypeExtension on PermissionType {
  String get name {
    switch (this) {
      case PermissionType.NOTIFYCATION:
        return 'notification';
      case PermissionType.EMAIL:
        return 'email';
      case PermissionType.LOCATION:
        return 'location';
      default:
        return '';
    }
  }
}