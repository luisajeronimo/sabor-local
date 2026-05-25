import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'switch_prato_do_dia_widget.dart' show SwitchPratoDoDiaWidget;
import 'package:flutter/material.dart';

class SwitchPratoDoDiaModel extends FlutterFlowModel<SwitchPratoDoDiaWidget> {
  ///  Local state fields for this component.

  bool switchPrato = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (AtualizarPratoDoDia)] action in Switch widget.
  ApiCallResponse? resultadoPratoDoDia;
  // Stores action output result for [Backend Call - API (AtualizarPratoDoDia)] action in Switch widget.
  ApiCallResponse? resultadoPratoDoDiaCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
