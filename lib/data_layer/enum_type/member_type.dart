import 'package:flutter/material.dart';

enum MemberType {
  NORMAL_MEMBER,
  SILVER_MEMBER,
  GOLD_MEMBER,
  DIAMOND_MEMBER,
  VIP_MEMBER,
}

extension DiscountTypeExtension on MemberType {
  int get type {
    switch (this) {
      case MemberType.NORMAL_MEMBER:
        return 0;
      case MemberType.SILVER_MEMBER:
        return 1;
      case MemberType.GOLD_MEMBER:
        return 2;
      case MemberType.DIAMOND_MEMBER:
        return 3;
      case MemberType.VIP_MEMBER:
        return 4;
      default:
        return 0;
    }
  }

  String get name {
    switch (this) {
      case MemberType.NORMAL_MEMBER:
        return 'Member';
      case MemberType.SILVER_MEMBER:
        return 'Silver';
      case MemberType.GOLD_MEMBER:
        return 'Gold';
      case MemberType.DIAMOND_MEMBER:
        return 'Diamond';
      case MemberType.VIP_MEMBER:
        return 'Vip';
      default:
        return '';
    }
  }

  List<Color> get cardColor {
    switch (this) {
      case MemberType.SILVER_MEMBER:
        return [const Color(0xFFDFEBF8), const Color(0xFF87A7BE)];
      case MemberType.GOLD_MEMBER:
        return [const Color(0xFFECE5AE), const Color(0xFFF3CC57)];
      case MemberType.DIAMOND_MEMBER:
        return [const Color(0xFFBADEDF), const Color(0xFF47C0B0)];
      case MemberType.VIP_MEMBER:
        return [const Color(0xFF094E8C), const Color(0xFF131C48)];
      default:
        return [const Color(0xFFD2EDFA), const Color(0xFF4CB7E4)];
    }
  }
}
