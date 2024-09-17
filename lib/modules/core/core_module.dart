import 'package:cuidapet_mobile/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);
    i.addInstance(AuthStore(),);
  }
}