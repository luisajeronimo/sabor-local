import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'gestao_de_papeis_widget.dart' show GestaoDePapeisWidget;
import 'package:flutter/material.dart';

class GestaoDePapeisModel extends FlutterFlowModel<GestaoDePapeisWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (TodosPapeis)] action in GestaoDePapeis widget.
  ApiCallResponse? resultadoDaAPI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
