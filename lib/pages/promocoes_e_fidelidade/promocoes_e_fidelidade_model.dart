import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'promocoes_e_fidelidade_widget.dart' show PromocoesEFidelidadeWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PromocoesEFidelidadeModel
    extends FlutterFlowModel<PromocoesEFidelidadeWidget> {
  ///  Local state fields for this page.

  String categoriaAtiva = 'Cupons';

  int? paginaAtual = 1;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (TodosCupons)] action in PromocoesEFidelidade widget.
  ApiCallResponse? respostaCupons;
  // State field(s) for Codigo widget.
  FocusNode? codigoFocusNode;
  TextEditingController? codigoTextController;
  String? Function(BuildContext, String?)? codigoTextControllerValidator;
  String? _codigoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Código é obrigatório';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

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
  late MaskTextInputFormatter validadeMask;
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
  // State field(s) for SwitchCupomAtivo widget.
  bool? switchCupomAtivoValue1;
  // Stores action output result for [Backend Call - API (AdicionaCupom)] action in ButtonEntrar widget.
  ApiCallResponse? apiResultfr8;
  // Stores action output result for [Backend Call - API (StatusCupom)] action in Icon widget.
  ApiCallResponse? apiResultbd;
  // Stores action output result for [Backend Call - API (StatusCupom)] action in Icon widget.
  ApiCallResponse? apiResultbdc;
  // Stores action output result for [Backend Call - API (TodosCupons)] action in Icon widget.
  ApiCallResponse? apiResultiwx;
  // Stores action output result for [Backend Call - API (TodosCupons)] action in Icon widget.
  ApiCallResponse? apiResultotr;
  // State field(s) for Desconto widget.
  FocusNode? descontoFocusNode1;
  TextEditingController? descontoTextController1;
  String? Function(BuildContext, String?)? descontoTextController1Validator;
  String? _descontoTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Valor is required';
    }

    return null;
  }

  // State field(s) for Desconto widget.
  FocusNode? descontoFocusNode2;
  TextEditingController? descontoTextController2;
  String? Function(BuildContext, String?)? descontoTextController2Validator;
  String? _descontoTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pontos is required';
    }

    return null;
  }

  // State field(s) for Desconto widget.
  FocusNode? descontoFocusNode3;
  TextEditingController? descontoTextController3;
  String? Function(BuildContext, String?)? descontoTextController3Validator;
  String? _descontoTextController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Minimo is required';
    }

    return null;
  }

  // State field(s) for Desconto widget.
  FocusNode? descontoFocusNode4;
  TextEditingController? descontoTextController4;
  String? Function(BuildContext, String?)? descontoTextController4Validator;
  String? _descontoTextController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Validade is required';
    }

    return null;
  }

  // State field(s) for SwitchCupomAtivo widget.
  bool? switchCupomAtivoValue2;

  @override
  void initState(BuildContext context) {
    codigoTextControllerValidator = _codigoTextControllerValidator;
    descontoCupomTextControllerValidator =
        _descontoCupomTextControllerValidator;
    validadeTextControllerValidator = _validadeTextControllerValidator;
    descontoTextController1Validator = _descontoTextController1Validator;
    descontoTextController2Validator = _descontoTextController2Validator;
    descontoTextController3Validator = _descontoTextController3Validator;
    descontoTextController4Validator = _descontoTextController4Validator;
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    codigoFocusNode?.dispose();
    codigoTextController?.dispose();

    descontoCupomFocusNode?.dispose();
    descontoCupomTextController?.dispose();

    validadeFocusNode?.dispose();
    validadeTextController?.dispose();

    valorMinFocusNode?.dispose();
    valorMinTextController?.dispose();

    valorMaxFocusNode?.dispose();
    valorMaxTextController?.dispose();

    descontoFocusNode1?.dispose();
    descontoTextController1?.dispose();

    descontoFocusNode2?.dispose();
    descontoTextController2?.dispose();

    descontoFocusNode3?.dispose();
    descontoTextController3?.dispose();

    descontoFocusNode4?.dispose();
    descontoTextController4?.dispose();
  }
}
