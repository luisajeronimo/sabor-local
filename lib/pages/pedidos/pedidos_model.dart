import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'pedidos_widget.dart' show PedidosWidget;
import 'package:flutter/material.dart';

class PedidosModel extends FlutterFlowModel<PedidosWidget> {
  ///  Local state fields for this page.

  List<int> listaPendencias = [13, 17, 18];
  void addToListaPendencias(int item) => listaPendencias.add(item);
  void removeFromListaPendencias(int item) => listaPendencias.remove(item);
  void removeAtIndexFromListaPendencias(int index) =>
      listaPendencias.removeAt(index);
  void insertAtIndexInListaPendencias(int index, int item) =>
      listaPendencias.insert(index, item);
  void updateListaPendenciasAtIndex(int index, Function(int) updateFn) =>
      listaPendencias[index] = updateFn(listaPendencias[index]);

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (TodosPedidos)] action in Pedidos widget.
  ApiCallResponse? resultadoDaAPI;
  // Stores action output result for [Backend Call - API (StatusPedido)] action in Button widget.
  ApiCallResponse? apiResult15r;
  // Stores action output result for [Backend Call - API (StatusPedido)] action in Button widget.
  ApiCallResponse? apiResultf2z;
  // Stores action output result for [Backend Call - API (StatusPedido)] action in Button widget.
  ApiCallResponse? apiResultu8s;
  // Stores action output result for [Backend Call - API (StatusPedido)] action in Button widget.
  ApiCallResponse? apiResultwff;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
