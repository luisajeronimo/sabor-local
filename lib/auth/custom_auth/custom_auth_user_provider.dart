import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SistemaDeGestaoSLFOODAuthUser {
  SistemaDeGestaoSLFOODAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SistemaDeGestaoSLFOODAuthUser>
    sistemaDeGestaoSLFOODAuthUserSubject =
    BehaviorSubject.seeded(SistemaDeGestaoSLFOODAuthUser(loggedIn: false));
Stream<SistemaDeGestaoSLFOODAuthUser> sistemaDeGestaoSLFOODAuthUserStream() =>
    sistemaDeGestaoSLFOODAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
