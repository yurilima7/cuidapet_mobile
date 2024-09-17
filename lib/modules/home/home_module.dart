import 'package:cuidapet_mobile/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const HomePage(),
    );
    super.routes(r);
  }

}