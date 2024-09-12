import 'package:cairo/model/user/user_customer_profile.dart';
import 'package:cairo/model/user/user_info_crm_abstract.dart';

class UserInfoCrmCustomer extends UserInfoCrmAbstract {
  static const typeWtfCustomer = "";
  String name;
  String surname;
  DateTime? creationMediaIdDate;
  List<UserCustomerProfile>  customerProfileList = [];


  UserInfoCrmCustomer({
    required super.id,
    required this.name,
    required this.surname,
    required super.parentUserInfo,
  });

  ///
  bool get isCreatedMediaId => creationMediaIdDate != null;

  bool get canBuySubscription {
    return hasExtendedActiveProfile;
  }

  ///
  bool get hasExtendedActiveProfile {
      return customerProfileList.where((element) =>
              element.status == UserCustomerProfileStatus.active
          &&  !element.isBaseProfile).isNotEmpty;
  }

  ///
  bool get hasOnlyBaseProfile {
    return customerProfileList.where((element) =>
            !element.isBaseProfile).isEmpty;
  }

  ///
  bool get hasOnlyActiveProfile {
      return inactiveCustomerProfileList.isEmpty;
    }

  ///
  List<UserCustomerProfile>  get activeCustomerProfileList{
    return customerProfileList.where((element) =>
    element.status == UserCustomerProfileStatus.active).toList();
  }

  ///
  List<UserCustomerProfile>  get inactiveCustomerProfileList{
    return customerProfileList.where((element) =>
    element.status != UserCustomerProfileStatus.active).toList();
  }

///
  @override
  UserInfoType get userInfoCrmType => UserInfoType.userInfoCrmCustomer;


}
