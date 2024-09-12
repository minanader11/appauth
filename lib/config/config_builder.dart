import 'package:enum_to_string/enum_to_string.dart';

import 'config_model.dart';

class ConfigBuilder {
  ///
  static ConfigModel buildConfig() {
    const environment = String.fromEnvironment("environment");

    ConfigModel configModel = ConfigModel();

    switch (EnumToString.fromString(Environment.values, environment)) {
      case Environment.dev:
      case null:
        // ------------------------------------------------------------
        //  1) ++++++++ DEV
        // ------------------------------------------------------------
        configModel
          ..enviroment = Environment.dev

          // ------------------------------------------------------------
          //  1) BASE URL DEV
          // ------------------------------------------------------------
          ..serverApiUrl = "https://example.com"
          ..baseUrlTicketing = "/path/example/products"

          // ------------------------------------------------------------
          //  2) WSO2 DEV1h
          // ------------------------------------------------------------
          ..identityServerDomain = configModel.identityServerDomain
          ..redirectUrl = "com.example.cairo.cairo://callback"
          ..authClientId =
             configModel.authClientId
          ..discoveryUrl =
            configModel.discoveryUrl;

        break;
      case Environment.lab:
        break;
      case Environment.prod:
        break;
    }

    return configModel;
  }
}
