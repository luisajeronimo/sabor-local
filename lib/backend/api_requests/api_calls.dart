import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? emailAddress = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(emailAddress)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/auth/login_adm',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TodosPedidosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TodosPedidos',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/pedido',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nomeCliente(dynamic response) => (getJsonField(
        response,
        r'''$[:]._cliente.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? produtosDosItensList(dynamic response) => getJsonField(
        response,
        r'''$[:]._itensdopedido[:]._produtosdositens''',
        true,
      ) as List?;
  static List<String>? produtosDosItens(dynamic response) => (getJsonField(
        response,
        r'''$[:]._itensdopedido[:]._produtosdositens.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SolicitarRecuperacaoCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SolicitarRecuperacao',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/solicitar_recuperacao',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidarCodigoRecuperacaoCall {
  static Future<ApiCallResponse> call({
    String? codigoOtp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "codigo_otp": "${escapeStringForJson(codigoOtp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ValidarCodigoRecuperacao',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/validar_codigo',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizarSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? novaSenha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "nova_senha": "${escapeStringForJson(novaSenha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarSenha',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/atualizar_senha',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TodosPapeisCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TodosPapeis',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/papel',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idRole(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? listaPapeis(dynamic response) => (getJsonField(
        response,
        r'''$[:].papel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CadastrarUsuarioCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? password = '',
    String? nomePapel = '',
    bool? statusAtivo,
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
  "papel_nome": "${escapeStringForJson(nomePapel)}",
  "status_ativo": ${statusAtivo}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarUsuario',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/userSistema',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status_ativo''',
      ));
  static int? idPapel(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.papel_id''',
      ));
  static String? senhaProvisoria(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
}

class EditarUsuarioCall {
  static Future<ApiCallResponse> call({
    int? idUser,
    String? nome = '',
    String? email = '',
    String? nomePapel = '',
    bool? statusAtivo,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${idUser},
  "papel": "${escapeStringForJson(nomePapel)}",
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "status_ativo": ${statusAtivo}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditarUsuario',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/user/${idUser}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletarUsuarioCall {
  static Future<ApiCallResponse> call({
    int? idUser,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeletarUsuario',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/user/${idUser}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TodosProdutosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TodosProdutos',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/produto',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? categorias(dynamic response) => (getJsonField(
        response,
        r'''$[:].Lista_de_categorias''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? tipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Tipo''',
      ));
}

class AtualizarStatusProdutoCall {
  static Future<ApiCallResponse> call({
    int? produtoId,
    bool? status,
  }) async {
    final ffApiRequestBody = '''
{
  "produto_id": ${produtoId},
  "precisa_produzir":${status}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarStatusProduto',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/produto/${produtoId}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarProdutoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? descricao = '',
    int? qtdDisp,
    double? preco,
    bool? precisaProduzir,
    String? listaCategorias = '',
    String? tipo = '',
    String? linkImagem = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "descricao": "${escapeStringForJson(descricao)}",
  "qtd_disp": ${qtdDisp},
  "preco": ${preco},
  "precisa_produzir": ${precisaProduzir},
  "link_imagem": "${escapeStringForJson(linkImagem)}",
  "Lista_de_categorias": "${escapeStringForJson(listaCategorias)}",
  "Tipo": "${escapeStringForJson(tipo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriarProduto',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/produto',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadCloudinaryCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? foto,
    String? preset = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadCloudinary',
      apiUrl: 'https://api.cloudinary.com/v1_1/saborlocal/image/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': foto,
        'upload_preset': preset,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$.secure_url''',
      );
}

class AtualizarPratoDoDiaCall {
  static Future<ApiCallResponse> call({
    int? idProduto,
    String? tipo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "produto_id": ${idProduto},
  "Tipo": "${escapeStringForJson(tipo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarPratoDoDia',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/tipo/produto/${idProduto}/',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditarProdutoCall {
  static Future<ApiCallResponse> call({
    int? idProduto,
    String? nome = '',
    String? descricao = '',
    int? qtdDisp,
    double? preco,
    bool? status,
    String? imagem = '',
    String? categoria = '',
    String? tipo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "produto_id": ${idProduto},
  "nome": "${escapeStringForJson(nome)}",
  "descricao": "${escapeStringForJson(descricao)}",
  "qtd_disp": ${qtdDisp},
  "preco": ${preco},
  "precisa_produzir": ${status},
  "link_imagem": "${escapeStringForJson(imagem)}",
  "Lista_de_categorias": "${escapeStringForJson(categoria)}",
  "Tipo": "${escapeStringForJson(tipo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditarProduto',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/editar/produto/${idProduto}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletarProdutoCall {
  static Future<ApiCallResponse> call({
    int? idProduto,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeletarProduto',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/produto/${idProduto}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UsuariosSistemaCall {
  static Future<ApiCallResponse> call({
    int? paginaAtual,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UsuariosSistema',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:koEsyPU2/admin/users',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': paginaAtual,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? idPapel(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.usuarios[:].papel_id''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
