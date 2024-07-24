import 'package:get_it/get_it.dart';
import 'package:user_repository/user_repository.dart';

class GetItSetup {
  final GetIt getIt = GetIt.instance;
  void setup() {
    getIt.registerSingleton<FirebaseUserRepo>(FirebaseUserRepo());

// Alternatively you could write it if you don't like global variables
// GetIt.I.registerSingleton<AppModel>(AppModel());
  }
}
