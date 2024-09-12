import 'package:cairo/model/user/user_info_crm_abstract.dart';
import 'package:cairo/model/user/user_info_crm_customer.dart';
import 'package:cairo/model/user/user_info_crm_inspector.dart';
import 'package:cairo/model/user/user_info_oauth.dart';

class UserInfo{


  UserInfoOauth?        userInfoOauth;
  UserInfoCrmAbstract?  userInfoCrm;

  List<String> userWtfProfile = [];

  ///
  UserInfo();

  ///
  bool get isLoggedCRM {
    return userInfoOauth != null;
  }

  ///
  bool get hasCrmProfile {
    return userInfoCrm != null;
  }

  ///
  String get getProfile{

    if(userWtfProfile.isEmpty){
      return "";
    }


    if(userInfoCrm == null){
      return userWtfProfile.first;
    }

    if(userInfoCrm!.userInfoCrmType == UserInfoType.userInfoCrmCustomer){
      return UserInfoCrmCustomer.typeWtfCustomer;
    }

    UserInfoCrmInspector tUserInfoInspector = userInfoCrm! as UserInfoCrmInspector;

    //
    if(tUserInfoInspector.isInspector && tUserInfoInspector.isSeller){
      return UserInfoCrmInspector.typeWtfResellerAndInspector;
    }

    //
    if(tUserInfoInspector.isInspector ){
      return UserInfoCrmInspector.typeWtfInspector;
    }

    //
    if(tUserInfoInspector.isSeller ){
      return UserInfoCrmInspector.typeWtfReseller;
    }

    return "";
  }

}



