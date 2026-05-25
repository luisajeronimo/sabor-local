import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_excluir_produto_widget.dart' show ModalExcluirProdutoWidget;
import 'package:flutter/material.dart';

class ModalExcluirProdutoModel
    extends FlutterFlowModel<ModalExcluirProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (DeletarProduto)] action in Button widget.
  ApiCallResponse? resultadoDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
