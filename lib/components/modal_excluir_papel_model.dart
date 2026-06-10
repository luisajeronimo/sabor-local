import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_excluir_papel_widget.dart' show ModalExcluirPapelWidget;
import 'package:flutter/material.dart';

class ModalExcluirPapelModel extends FlutterFlowModel<ModalExcluirPapelWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (DeletarPapel)] action in Button widget.
  ApiCallResponse? resultadoDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
