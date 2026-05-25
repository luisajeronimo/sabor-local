import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'definir_nova_senha_widget.dart' show DefinirNovaSenhaWidget;
import 'package:flutter/material.dart';

class DefinirNovaSenhaModel extends FlutterFlowModel<DefinirNovaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextLogin widget.
  FocusNode? textLoginFocusNode;
  TextEditingController? textLoginTextController;
  String? Function(BuildContext, String?)? textLoginTextControllerValidator;
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  String? _newPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senha é obrigatório';
    }

    if (val.length < 8) {
      return 'Sua senha é muito curta';
    }

    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  String? _passwordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senha é obrigatório';
    }

    if (val.length < 8) {
      return 'Sua senha é muito curta';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (AtualizarSenha)] action in ButtonEntrar widget.
  ApiCallResponse? resultadoAtualizarSenha;

  @override
  void initState(BuildContext context) {
    newPasswordVisibility = false;
    newPasswordTextControllerValidator = _newPasswordTextControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmTextControllerValidator =
        _passwordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    textLoginFocusNode?.dispose();
    textLoginTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
