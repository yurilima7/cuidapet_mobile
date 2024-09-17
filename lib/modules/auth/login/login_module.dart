import 'package:cuidapet_mobile/modules/auth/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const LoginPage(),
    );
    super.routes(r);
  }

}