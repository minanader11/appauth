enum Environment {
  dev,
  lab,
  prod,
}

class ConfigModel {


  String serverApiUrl = "";
  String serverPortalUrl = "";

  int versionNumber = 1;

  String baseUrlTicketing = "";


  String identityServerDomain = "https://fnd-identitymanager-mw-identityserver-uctss-fnd.uctssvil.corp";
  String authDomain = "";
  String authClientId = "6RtqEeDUN6bkaKkCgO8k_yNj2_8a";
  String discoveryUrl = "https://fnd-identitymanager-mw-identityserver-uctss-fnd.uctssvil.corp/oauth2/token/.well-known/openid-configuration";
  String redirectUrl = "com.example.cairo.cairo://callback";
  String fixedToken = "";

  late Environment enviroment;

  ConfigModel();
}
