class UpdateProfileParam {
  String? avatar;
  String? name;
  String? birthday;
  int? gender;
  String? email;
  String? addressNumber;
  int? provinceId;
  int? districtId;
  int? wardId;

  UpdateProfileParam(
      {this.avatar,
      this.name,
      this.birthday,
      this.gender,
      this.email,
      this.addressNumber,
      this.provinceId,
      this.districtId,
      this.wardId});

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (avatar != null) data['avatar'] = avatar;
    if (name != null) data['name'] = name;
    if (birthday != null) data['birthday'] = birthday;
    if (gender != null) data['gender'] = gender;
    if (email != null) data['email'] = email;
    if (addressNumber != null) data['address_number'] = addressNumber;
    if (provinceId != null) data['province_id'] = provinceId;
    if (districtId != null) data['district_id'] = districtId;
    if (wardId != null) data['ward_id'] = wardId;
    return data;
  }
}
