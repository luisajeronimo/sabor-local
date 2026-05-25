import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recuperacao_senha_widget.dart' show RecuperacaoSenhaWidget;
import 'package:flutter/material.dart';

class RecuperacaoSenhaModel extends FlutterFlowModel<RecuperacaoSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextLogin widget.
  FocusNode? textLoginFocusNode;
  TextEditingController? textLoginTextController;
  String? Function(BuildContext, String?)? textLoginTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email é obrigatório';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Esse email não é válido';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (SolicitarRecuperacao)] action in ButtonEntrar widget.
  ApiCallResponse? resultadoSolicitacao;

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
  }

  @override
  void dispose() {
    textLoginFocusNode?.dispose();
    textLoginTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
