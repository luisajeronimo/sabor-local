import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_editar_papel_widget.dart' show ModalEditarPapelWidget;
import 'package:flutter/material.dart';

class ModalEditarPapelModel extends FlutterFlowModel<ModalEditarPapelWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomePapel widget.
  FocusNode? nomePapelFocusNode;
  TextEditingController? nomePapelTextController;
  String? Function(BuildContext, String?)? nomePapelTextControllerValidator;
  // State field(s) for NivelDeAcesso widget.
  String? nivelDeAcessoValue;
  FormFieldController<String>? nivelDeAcessoValueController;
  // Stores action output result for [Backend Call - API (EditarPapel)] action in Button widget.
  ApiCallResponse? resultado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomePapelFocusNode?.dispose();
    nomePapelTextController?.dispose();
  }
}
