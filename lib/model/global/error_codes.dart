import 'package:enum_to_string/enum_to_string.dart';

enum ErrorCodes {
  ERR_BUSINESS_INVALID_OP,
  ERR_SESSION_EXPIRED,
  ERR_BUSINESS_NW_INVALID_DATA,
  ERR_BUSINESS_NW_SOCKET,
  ERR_BUSINESS_NW_GENERIC,
  ERR_OP_MISSING_ANAG_INFO,
  ERR_BUSINESS_INVALID_DATA,
}

extension LocalizedTextExtension on ErrorCodes {
  ///
  String getValue() {
    return EnumToString.convertToString(this);
  }
}
