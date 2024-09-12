import 'package:cairo/model/global/data_manager_error.dart';

class DataManagerResponse <T>{
  T? response;
  DataManagerError?  error;
  DataManagerError?  warning;


  //----------------------------------------------------------------------------

  DataManagerResponse( {this.response, this.error} );

  bool hasError(){
    if(this.error == null) return false;
    return true;
  }


  bool hasWarning(){
    if(this.warning == null) return false;
    return true;
  }


  bool hasRequiredAction(){

    if (this.hasErrorRequiredAction()
    ||  this.hasWarningRequiredAction()) {
      return true;
    }

    return false;
  }

  bool hasErrorRequiredAction(){

    if(this.error == null)                return false;
    if(this.error!.requiredAction == null) return false;
    return true;
  }

  bool hasWarningRequiredAction(){

    if(this.warning == null)                return false;
    if(this.warning!.requiredAction == null) return false;
    return true;
  }
//----------------------------------------------------------------------------

}