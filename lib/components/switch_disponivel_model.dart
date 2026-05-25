import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'switch_disponivel_widget.dart' show SwitchDisponivelWidget;
import 'package:flutter/material.dart';

class SwitchDisponivelModel extends FlutterFlowModel<SwitchDisponivelWidget> {
  ///  Local state fields for this component.

  bool switchDisponivel = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (AtualizarStatusProduto)] action in Switch widget.
  ApiCallResponse? resultadoAttProduto;
  // Stores action output result for [Backend Call - API (AtualizarStatusProduto)] action in Switch widget.
  ApiCallResponse? resultadoAttProdutoCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
