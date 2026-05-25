import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'gestao_de_acessos_widget.dart' show GestaoDeAcessosWidget;
import 'package:flutter/material.dart';

class GestaoDeAcessosModel extends FlutterFlowModel<GestaoDeAcessosWidget> {
  ///  Local state fields for this page.

  String regraAdmin = 'ADMINISTRADOR';

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (UsuariosSistema)] action in GestaoDeAcessos widget.
  ApiCallResponse? respostaUsuarios;
  // Stores action output result for [Backend Call - API (UsuariosSistema)] action in Icon widget.
  ApiCallResponse? proximaPagina;
  // Stores action output result for [Backend Call - API (UsuariosSistema)] action in Icon widget.
  ApiCallResponse? proximaPaginaAPI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
