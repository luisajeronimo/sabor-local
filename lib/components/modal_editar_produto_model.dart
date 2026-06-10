import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_editar_produto_widget.dart' show ModalEditarProdutoWidget;
import 'package:flutter/material.dart';

class ModalEditarProdutoModel
    extends FlutterFlowModel<ModalEditarProdutoWidget> {
  ///  Local state fields for this component.

  bool fotoEscolhida = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NomeDoProduto widget.
  FocusNode? nomeDoProdutoFocusNode;
  TextEditingController? nomeDoProdutoTextController;
  String? Function(BuildContext, String?)? nomeDoProdutoTextControllerValidator;
  String? _nomeDoProdutoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome do produto é obrigatório';
    }

    return null;
  }

  // State field(s) for Preco widget.
  FocusNode? precoFocusNode;
  TextEditingController? precoTextController;
  String? Function(BuildContext, String?)? precoTextControllerValidator;
  String? _precoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preço é obrigatório';
    }

    return null;
  }

  // State field(s) for QtdDisp widget.
  FocusNode? qtdDispFocusNode;
  TextEditingController? qtdDispTextController;
  String? Function(BuildContext, String?)? qtdDispTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Tipo widget.
  FocusNode? tipoFocusNode;
  TextEditingController? tipoTextController;
  String? Function(BuildContext, String?)? tipoTextControllerValidator;
  bool isDataUploading_fotoEditarProduto = false;
  FFUploadedFile uploadedLocalFile_fotoEditarProduto =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  String? _descricaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Descrição é obrigatório';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }
    if (val.length > 600) {
      return 'Maximum 600 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for Status widget.
  bool? statusValue;
  // State field(s) for PratoDoDia widget.
  bool? pratoDoDiaValue;
  // Stores action output result for [Backend Call - API (UploadCloudinary)] action in Button widget.
  ApiCallResponse? resultadoCloudinary;
  // Stores action output result for [Backend Call - API (EditarProduto)] action in Button widget.
  ApiCallResponse? resultadoEditar;
  // Stores action output result for [Backend Call - API (EditarProduto)] action in Button widget.
  ApiCallResponse? resultadoEditar2;

  @override
  void initState(BuildContext context) {
    nomeDoProdutoTextControllerValidator =
        _nomeDoProdutoTextControllerValidator;
    precoTextControllerValidator = _precoTextControllerValidator;
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
  }

  @override
  void dispose() {
    nomeDoProdutoFocusNode?.dispose();
    nomeDoProdutoTextController?.dispose();

    precoFocusNode?.dispose();
    precoTextController?.dispose();

    qtdDispFocusNode?.dispose();
    qtdDispTextController?.dispose();

    tipoFocusNode?.dispose();
    tipoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
