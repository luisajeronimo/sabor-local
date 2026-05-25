import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_criar_papel_widget.dart' show ModalCriarPapelWidget;
import 'package:flutter/material.dart';

class ModalCriarPapelModel extends FlutterFlowModel<ModalCriarPapelWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  String? _nomeCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome Completo is required';
    }

    return null;
  }

  // State field(s) for Papel widget.
  String? papelValue;
  FormFieldController<String>? papelValueController;
  // Stores action output result for [Backend Call - API (EditarUsuario)] action in Button widget.
  ApiCallResponse? resultado;

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();
  }
}
