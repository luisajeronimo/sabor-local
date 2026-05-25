import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_cadastrar_usuario_widget.dart' show ModalCadastrarUsuarioWidget;
import 'package:flutter/material.dart';

class ModalCadastrarUsuarioModel
    extends FlutterFlowModel<ModalCadastrarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  String? _nomeCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome é obrigatório';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email é obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for SwitchStatusUsuario widget.
  bool? switchStatusUsuarioValue;
  // State field(s) for SenhaProvisoria widget.
  FocusNode? senhaProvisoriaFocusNode;
  TextEditingController? senhaProvisoriaTextController;
  late bool senhaProvisoriaVisibility;
  String? Function(BuildContext, String?)?
      senhaProvisoriaTextControllerValidator;
  String? _senhaProvisoriaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senha é obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (CadastrarUsuario)] action in Button widget.
  ApiCallResponse? resultadoDaAPI;

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    senhaProvisoriaVisibility = false;
    senhaProvisoriaTextControllerValidator =
        _senhaProvisoriaTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaProvisoriaFocusNode?.dispose();
    senhaProvisoriaTextController?.dispose();
  }
}
