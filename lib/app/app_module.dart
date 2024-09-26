import 'package:cuidapet_mobile/modules/auth/auth_module.dart';
import 'package:cuidapet_mobile/modules/auth/register/register_module.dart';
import 'package:cuidapet_mobile/modules/core/core_module.dart';
import 'package:cuidapet_mobile/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(RouteManager r) {
    r.module('/auth/', module: AuthModule());
    r.module('/home/', module: HomeModule());
    r.module('/register/', module: RegisterModule());
  }
}
