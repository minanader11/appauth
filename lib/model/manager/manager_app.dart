import 'package:get_it/get_it.dart';
import '../../config/config_model.dart';

class ManagerApp {

  ConfigModel getConfig() {
    return GetIt.I<ConfigModel>();
  }

  ///
  Future<void> initApp(ConfigModel remoteConfigModelDataManager) async {
    GetIt.I.registerSingleton<ConfigModel>(
      remoteConfigModelDataManager,
    );
  }
}