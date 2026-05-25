import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _idPapel = prefs.getInt('ff_idPapel') ?? _idPapel;
    });
    _safeInit(() {
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<dynamic> _listaPedidosState = [];
  List<dynamic> get listaPedidosState => _listaPedidosState;
  set listaPedidosState(List<dynamic> value) {
    _listaPedidosState = value;
  }

  void addToListaPedidosState(dynamic value) {
    listaPedidosState.add(value);
  }

  void removeFromListaPedidosState(dynamic value) {
    listaPedidosState.remove(value);
  }

  void removeAtIndexFromListaPedidosState(int index) {
    listaPedidosState.removeAt(index);
  }

  void updateListaPedidosStateAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    listaPedidosState[index] = updateFn(_listaPedidosState[index]);
  }

  void insertAtIndexInListaPedidosState(int index, dynamic value) {
    listaPedidosState.insert(index, value);
  }

  List<dynamic> _listaUsuariosState = [];
  List<dynamic> get listaUsuariosState => _listaUsuariosState;
  set listaUsuariosState(List<dynamic> value) {
    _listaUsuariosState = value;
  }

  void addToListaUsuariosState(dynamic value) {
    listaUsuariosState.add(value);
  }

  void removeFromListaUsuariosState(dynamic value) {
    listaUsuariosState.remove(value);
  }

  void removeAtIndexFromListaUsuariosState(int index) {
    listaUsuariosState.removeAt(index);
  }

  void updateListaUsuariosStateAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    listaUsuariosState[index] = updateFn(_listaUsuariosState[index]);
  }

  void insertAtIndexInListaUsuariosState(int index, dynamic value) {
    listaUsuariosState.insert(index, value);
  }

  int _paginaAtual = 1;
  int get paginaAtual => _paginaAtual;
  set paginaAtual(int value) {
    _paginaAtual = value;
  }

  List<String> _listaPapeisState = [];
  List<String> get listaPapeisState => _listaPapeisState;
  set listaPapeisState(List<String> value) {
    _listaPapeisState = value;
  }

  void addToListaPapeisState(String value) {
    listaPapeisState.add(value);
  }

  void removeFromListaPapeisState(String value) {
    listaPapeisState.remove(value);
  }

  void removeAtIndexFromListaPapeisState(int index) {
    listaPapeisState.removeAt(index);
  }

  void updateListaPapeisStateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaPapeisState[index] = updateFn(_listaPapeisState[index]);
  }

  void insertAtIndexInListaPapeisState(int index, String value) {
    listaPapeisState.insert(index, value);
  }

  int _statusTotal = 0;
  int get statusTotal => _statusTotal;
  set statusTotal(int value) {
    _statusTotal = value;
  }

  List<dynamic> _listaProdutosState = [];
  List<dynamic> get listaProdutosState => _listaProdutosState;
  set listaProdutosState(List<dynamic> value) {
    _listaProdutosState = value;
  }

  void addToListaProdutosState(dynamic value) {
    listaProdutosState.add(value);
  }

  void removeFromListaProdutosState(dynamic value) {
    listaProdutosState.remove(value);
  }

  void removeAtIndexFromListaProdutosState(int index) {
    listaProdutosState.removeAt(index);
  }

  void updateListaProdutosStateAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    listaProdutosState[index] = updateFn(_listaProdutosState[index]);
  }

  void insertAtIndexInListaProdutosState(int index, dynamic value) {
    listaProdutosState.insert(index, value);
  }

  int _idPapel = 0;
  int get idPapel => _idPapel;
  set idPapel(int value) {
    _idPapel = value;
    prefs.setInt('ff_idPapel', value);
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    prefs.setString('ff_userName', value);
  }

  final _cachePapeisManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cachePapeis({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cachePapeisManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCachePapeisCache() => _cachePapeisManager.clear();
  void clearCachePapeisCacheKey(String? uniqueKey) =>
      _cachePapeisManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
