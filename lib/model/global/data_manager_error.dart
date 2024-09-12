import 'package:cairo/model/global/data_manager_action.dart';
import 'package:cairo/model/global/data_manager_error_logger.dart';

class DataManagerError
{
  static const String ERR_BUSINESS_CRM_USER_NOT_LOGGED     = "ERR_BUSINESS_CRM_USER_NOT_LOGGED" ;
  static const String ERR_BUSINESS_ACCESS_TYPE_NOT_SPECIFIED     = "ERR_BUSINESS_ACCESS_TYPE_NOT_SPECIFIED" ;


  static const String ERR_BUSINESS_INVALID_OP     = "ERR_BUSINESS_INVALID_OP" ;
  static const String ERR_BUSINESS_INVALID_PARAMS = "ERR_BUSINESS_INVALID_PARAMS" ;
  static const String ERR_BUSINESS_INCONSISTENCY  = "ERR_BUSINESS_INCONSISTENCY" ;


  // ------------------------------------------------------------
  //  AppInfo Errors
  // ------------------------------------------------------------
  static const String ERR_BUSINESS_NOT_INT_APP     = "ERR_BUSINESS_NOT_INT_APP" ;

  // ------------------------------------------------------------
  //  Logon Errors
  // ------------------------------------------------------------
  static const String ERR_OP_INVALID_LOGIN_DEVICE_MAPPED_ON_OTHER_CRM_USER    = "ERR_OP_INVALID_LOGIN_DEVICE_MAPPED_ON_OTHER_CRM_USER" ;
  static const String ERR_OP_MISSING_ANAG_INFO                                = "ERR_OP_MISSING_ANAG_INFO" ;


  // ------------------------------------------------------------
  //  NW Errors
  // ------------------------------------------------------------
  static const String ERR_NW_OFF_LINE_CODE        = "ERR_NW_OFF_LINE_CODE" ;
  static const String ERR_NW_OFF_LINE_MESSAGE     = "ERR_NW_OFF_LINE_MESSAGE";
  static const String ERR_NW_NO_DATA_FOUND        = "ERR_NW_NO_DATA_FOUND";



  static const String ERR_BUSINESS_NW_INVALID_DATA         = "ERR_BUSINESS_NW_INVALID_DATA";
  static const String ERR_BUSINESS_NW_GENERIC              = "ERR_BUSINESS_NW_GENERIC";
  static const String ERR_BUSINESS_NW_SOCKET               = "ERR_BUSINESS_NW_SOCKET";
  static const String ERR_BUSINESS_INVALID_SECRET_KEY   = "ERR_BUSINESS_INVALID_SECRET_KEY";
  static const String ERR_BUSINESS_INVALID_APP_VERSION  = "ERR_BUSINESS_INVALID_APP_VERSION";
  static const String ERR_BUSINESS_INVALID_DATA         ="ERR_BUSINESS_INVALID_DATA";


  // ------------------------------------------------------------
  //  Persistence Errors
  // ------------------------------------------------------------
  static const String ERR_DB_GENERIC           = "ERR_DB_GENERIC";
  static const String ERR_DB_INCONSISTENCY     = "ERR_DB_INCONSISTENCY";
  static const String ERR_DB_NO_DATA           = "ERR_DB_NO_DATA";
  static const String ERR_OP_INVALID           = "ERR_OP_INVALID";




  DataManagerError ({required this.errorType,required this.message});

  String errorType;
  String message;
  String debugMessage = "";
  DataManagerAction? requiredAction;


  DataManagerErrorLogger get logger {

    return DataManagerErrorLogger( error: this);
  }
}