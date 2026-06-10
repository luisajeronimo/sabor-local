import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_criar_papel_widget.dart' show ModalCriarPapelWidget;
import 'package:flutter/material.dart';

class ModalCriarPapelModel extends FlutterFlowModel<ModalCriarPapelWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomePapel widget.
  FocusNode? nomePapelFocusNode;
  TextEditingController? nomePapelTextController;
  String? Function(BuildContext, String?)? nomePapelTextControllerValidator;
  String? _nomePapelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Papel is required';
    }

    return null;
  }

  // State field(s) for NivelDeAcesso widget.
  String? nivelDeAcessoValue;
  FormFieldController<String>? nivelDeAcessoValueController;
  // Stores action output result for [Backend Call - API (CriarPapel)] action in Button widget.
  ApiCallResponse? resultado;

  @override
  void initState(BuildContext context) {
    nomePapelTextControllerValidator = _nomePapelTextControllerValidator;
  }

  @override
  void dispose() {
    nomePapelFocusNode?.dispose();
    nomePapelTextController?.dispose();
  }
}
