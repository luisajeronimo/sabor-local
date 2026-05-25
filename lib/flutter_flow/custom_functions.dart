import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/auth/custom_auth/auth_util.dart';

List<dynamic>? filtrarPedidosPorStatus(
  List<dynamic>? listaCompleta,
  int? setStatus,
) {
  if (listaCompleta == null) {
    return [];
  }

  return listaCompleta
      .where((pedido) => pedido['status_pedido_id'] == setStatus)
      .toList();
}

int? contarPedidosPorStatus(
  List<dynamic>? listaCompleta,
  int? setStatus,
) {
  if (listaCompleta == null) return 0;

  return listaCompleta
      .where((pedido) => pedido['status_pedido_id'] == setStatus)
      .length;
}

List<dynamic>? atualizaStatusProduto(
  List<dynamic>? listaAtual,
  int? index,
  bool? novoStatus,
) {
  if (listaAtual == null || index == null || novoStatus == null) {
    return listaAtual ?? [];
  }

  List<dynamic> novaLista = List.from(listaAtual);

  if (index >= 0 && index < novaLista.length) {
    novaLista[index]['precisa_produzir'] = novoStatus;
  }

  return novaLista;
}

List<dynamic>? atualizaPratoDoDia(
  List<dynamic>? listaAtual,
  int? index,
  bool? novoStatus,
) {
  if (listaAtual == null || index == null || novoStatus == null) {
    return listaAtual ?? [];
  }

  List<dynamic> novaLista = List.from(listaAtual);

  if (index >= 0 && index < novaLista.length) {
    novaLista[index]['Tipo'] = novoStatus ? 'PratoDoDia' : '';
  }

  return novaLista;
}

List<dynamic>? filtrarPorCategoria(
  List<dynamic>? listaCompleta,
  String? abaAtiva,
) {
  if (listaCompleta == null || abaAtiva == null || abaAtiva.isEmpty) {
    return listaCompleta ?? [];
  }
  return listaCompleta
      .where((item) => item['Lista_de_categorias'] == abaAtiva)
      .toList();
}

bool? verificaPratoDoDia(dynamic valorDoBanco) {
  if (valorDoBanco == null) {
    return false;
  }
  return valorDoBanco.toString() == 'PratoDoDia';
}
