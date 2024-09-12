import 'package:cairo/model/user/user_info.dart';

enum UserInfoType {
  userInfoCrmCustomer,
  userInfoCrmInspector,

}

abstract class UserInfoCrmAbstract {
  String id;
  UserInfo parentUserInfo;

  ///
  UserInfoCrmAbstract({
    required this.id,
    required this.parentUserInfo,
  });

  ///
  UserInfoType get userInfoCrmType;


}
