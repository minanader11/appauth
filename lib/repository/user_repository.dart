import 'package:cairo/config/config_builder.dart';
import 'package:cairo/model/global/data_manager_action.dart';
import 'package:cairo/model/global/data_manager_error.dart';
import 'package:cairo/model/global/data_manager_response.dart';
import 'package:cairo/model/global/error_codes.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

import '../model/manager/manager_app.dart';
import '../model/user/user_info_oauth.dart';

class UserRepository {
  final String mobileSuffix = "?app=true";

  ///
  Future<DataManagerResponse<UserInfoOauth>> loginCrmOauth() async
  {
      DataManagerResponse<UserInfoOauth> tRetAppInfoNew = DataManagerResponse();

      try
      {
          const FlutterAppAuth appAuth = FlutterAppAuth();
          var remoteConfig = ManagerApp().getConfig();

          final AuthorizationResponse? authorizationResponse = await appAuth.authorize(
            AuthorizationRequest(
              remoteConfig.authClientId,
              remoteConfig.redirectUrl,
              discoveryUrl: remoteConfig.discoveryUrl,
              promptValues: ['login'],
              scopes: <String>["internal_login"],
            ),
          );

          final TokenResponse? tokenResponse = await appAuth.token(TokenRequest(
            remoteConfig.authClientId,
            remoteConfig.redirectUrl,
            codeVerifier: authorizationResponse!.codeVerifier,
            authorizationCode: authorizationResponse.authorizationCode,
            grantType: "authorization_code",
            discoveryUrl: remoteConfig.discoveryUrl,
          ));

          tRetAppInfoNew.response = UserInfoOauth(
            userName: "",
            refreshToken: tokenResponse!.refreshToken!,
            accessToken: tokenResponse.accessToken!,
          );

          return tRetAppInfoNew;

      } catch (e) {
        print("Eeee $e");
        return DataManagerResponse()
          ..error = (DataManagerError(
            errorType: DataManagerError.ERR_BUSINESS_NW_SOCKET,
            message: ErrorCodes.ERR_BUSINESS_NW_SOCKET.getValue(),
          )
            ..requiredAction = DataManagerAction.ERR_ACTION_REQUIRE_LOGON
            ..debugMessage = e.toString()
            ..logger.logError());
      }
  }
 }
