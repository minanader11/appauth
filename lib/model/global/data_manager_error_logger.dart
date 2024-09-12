import 'package:cairo/model/global/data_manager_error.dart';

class DataManagerErrorLogger{
  DataManagerError error;


  DataManagerErrorLogger ({required this.error});


  DataManagerError? logError (){
    /*
      print values:
      var tErrMessage       =  error.message;
      var tErrDebugMessage  =  error.debugMessage;
      var tErrType          =  error.errorType;
      var tErrAction        = (error.requiredAction != null) ? error.requiredAction.toString() : "-";
    */
    return error;
  }
}
