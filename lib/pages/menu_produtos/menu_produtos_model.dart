import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'menu_produtos_widget.dart' show MenuProdutosWidget;
import 'package:flutter/material.dart';

class MenuProdutosModel extends FlutterFlowModel<MenuProdutosWidget> {
  ///  Local state fields for this page.

  String categoriaAtiva = 'Pratos principais';

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (TodosProdutos)] action in MenuProdutos widget.
  ApiCallResponse? resultadoDaAPI;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
