import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_excluir_usuario_widget.dart' show ModalExcluirUsuarioWidget;
import 'package:flutter/material.dart';

class ModalExcluirUsuarioModel
    extends FlutterFlowModel<ModalExcluirUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (DeletarUsuario)] action in Button widget.
  ApiCallResponse? resultadoDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
