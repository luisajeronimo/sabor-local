import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_editar_cupom_widget.dart' show ModalEditarCupomWidget;
import 'package:flutter/material.dart';

class ModalEditarCupomModel extends FlutterFlowModel<ModalEditarCupomWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DescontoCupom widget.
  FocusNode? descontoCupomFocusNode;
  TextEditingController? descontoCupomTextController;
  String? Function(BuildContext, String?)? descontoCupomTextControllerValidator;
  String? _descontoCupomTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Valor é obrigatório';
    }

    return null;
  }

  // State field(s) for TipoDesconto widget.
  String? tipoDescontoValue;
  FormFieldController<String>? tipoDescontoValueController;
  // State field(s) for Validade widget.
  FocusNode? validadeFocusNode;
  TextEditingController? validadeTextController;
  String? Function(BuildContext, String?)? validadeTextControllerValidator;
  String? _validadeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Validade é obrigatório';
    }

    return null;
  }

  // State field(s) for ValorMin widget.
  FocusNode? valorMinFocusNode;
  TextEditingController? valorMinTextController;
  String? Function(BuildContext, String?)? valorMinTextControllerValidator;
  // State field(s) for ValorMax widget.
  FocusNode? valorMaxFocusNode;
  TextEditingController? valorMaxTextController;
  String? Function(BuildContext, String?)? valorMaxTextControllerValidator;
  // Stores action output result for [Backend Call - API (EditaCupom)] action in Button widget.
  ApiCallResponse? apiResultrc3;

  @override
  void initState(BuildContext context) {
    descontoCupomTextControllerValidator =
        _descontoCupomTextControllerValidator;
    validadeTextControllerValidator = _validadeTextControllerValidator;
  }

  @override
  void dispose() {
    descontoCupomFocusNode?.dispose();
    descontoCupomTextController?.dispose();

    validadeFocusNode?.dispose();
    validadeTextController?.dispose();

    valorMinFocusNode?.dispose();
    valorMinTextController?.dispose();

    valorMaxFocusNode?.dispose();
    valorMaxTextController?.dispose();
  }
}
