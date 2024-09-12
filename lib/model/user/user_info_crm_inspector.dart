import 'package:cairo/model/user/user_info_crm_abstract.dart';

class UserInfoCrmInspector extends UserInfoCrmAbstract {
  static const typeWtfInspector = "";
  static const typeWtfReseller = "";
  static const typeWtfResellerAndInspector = "";

  UserInfoCrmInspector({
    required super.id,
    required super.parentUserInfo,
  });

  @override
  UserInfoType get userInfoCrmType => UserInfoType.userInfoCrmInspector;

  bool get isInspector {
    return parentUserInfo.userWtfProfile.contains(typeWtfResellerAndInspector)
          || parentUserInfo.userWtfProfile.contains(typeWtfInspector);

  }

  bool get isSeller {
    return parentUserInfo.userWtfProfile.contains(typeWtfResellerAndInspector)
        || parentUserInfo.userWtfProfile.contains(typeWtfReseller);
  }
}
