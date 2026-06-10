import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'painel_de_gestao_widget.dart' show PainelDeGestaoWidget;
import 'package:flutter/material.dart';

class PainelDeGestaoModel extends FlutterFlowModel<PainelDeGestaoWidget> {
  ///  Local state fields for this page.

  String periodo = 'hoje';

  int? paginaAtual = 1;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (Dashboard)] action in PainelDeGestao widget.
  ApiCallResponse? respostaDashboard;
  // Stores action output result for [Backend Call - API (Dashboard)] action in Container widget.
  ApiCallResponse? apiResultHoje;
  // Stores action output result for [Backend Call - API (Dashboard)] action in Container widget.
  ApiCallResponse? apiResultizl;
  // Stores action output result for [Backend Call - API (Dashboard)] action in Container widget.
  ApiCallResponse? apiResultMensal;
  // Stores action output result for [Backend Call - API (Dashboard)] action in Icon widget.
  ApiCallResponse? apiResult;
  // Stores action output result for [Backend Call - API (Dashboard)] action in Icon widget.
  ApiCallResponse? apiResultwvw;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
