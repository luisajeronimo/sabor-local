import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'switch_disponivel_model.dart';
export 'switch_disponivel_model.dart';

class SwitchDisponivelWidget extends StatefulWidget {
  const SwitchDisponivelWidget({
    super.key,
    bool? switchDisponivelParameter,
    required this.itemIndex,
    required this.idRealProduto,
  }) : this.switchDisponivelParameter = switchDisponivelParameter ?? true;

  final bool switchDisponivelParameter;
  final int? itemIndex;
  final int? idRealProduto;

  @override
  State<SwitchDisponivelWidget> createState() => _SwitchDisponivelWidgetState();
}

class _SwitchDisponivelWidgetState extends State<SwitchDisponivelWidget> {
  late SwitchDisponivelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchDisponivelModel());

    _model.switchValue = widget.switchDisponivelParameter;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        safeSetState(() => _model.switchValue = newValue);
        if (newValue) {
          FFAppState().listaProdutosState = functions
              .atualizaStatusProduto(FFAppState().listaProdutosState.toList(),
                  widget.itemIndex, true)!
              .toList()
              .cast<dynamic>();
          safeSetState(() {});
          _model.resultadoAttProduto = await AtualizarStatusProdutoCall.call(
            produtoId: widget.idRealProduto,
            status: _model.switchValue,
          );

          if ((_model.resultadoAttProduto?.succeeded ?? true)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'OK',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).secondary,
              ),
            );
          }

          safeSetState(() {});
        } else {
          FFAppState().listaProdutosState = functions
              .atualizaStatusProduto(FFAppState().listaProdutosState.toList(),
                  widget.itemIndex, true)!
              .toList()
              .cast<dynamic>();
          safeSetState(() {});
          _model.resultadoAttProdutoCopy =
              await AtualizarStatusProdutoCall.call(
            produtoId: widget.idRealProduto,
            status: _model.switchValue,
          );

          if ((_model.resultadoAttProdutoCopy?.succeeded ?? true)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'OK',
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).secondary,
              ),
            );
          }

          safeSetState(() {});
        }
      },
      activeColor: FlutterFlowTheme.of(context).secondaryBackground,
      activeTrackColor: FlutterFlowTheme.of(context).secondary,
      inactiveTrackColor: Color(0x73ACADAF),
      inactiveThumbColor: Color(0xFF5A5C5E),
    );
  }
}
