enum UserCustomerProfileStatus{
  active,
  inactiveRequiredDoc,
  inactiveUnderReviewDoc,
  expired,
}

class UserCustomerProfile{
  static const String baseCustomerProfile = "CP.BS";
  String id;
  String name;
  bool   isBaseProfile;
  final UserCustomerProfileStatus _status;

  ///
  UserCustomerProfile({
    required this.id,
    required this.name,
    required status,
    required this.isBaseProfile,
  }): _status = status;


  ///
  UserCustomerProfileStatus get status {
    if(isBaseProfile) return UserCustomerProfileStatus.active;
    return _status;
  }
}