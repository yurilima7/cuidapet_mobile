import 'package:cuidapet_mobile/modules/auth/home/auth_home_page.dart';
import 'package:cuidapet_mobile/modules/auth/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => AuthHomePage(authStore: Modular.get(),),
    );

    r.module('/login/', module: LoginModule());
    super.routes(r);
  }
}