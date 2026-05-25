import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'pedidos_widget.dart' show PedidosWidget;
import 'package:flutter/material.dart';

class PedidosModel extends FlutterFlowModel<PedidosWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (TodosPedidos)] action in Pedidos widget.
  ApiCallResponse? resultadoDaAPI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
