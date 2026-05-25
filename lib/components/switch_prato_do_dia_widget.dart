import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'switch_prato_do_dia_model.dart';
export 'switch_prato_do_dia_model.dart';

class SwitchPratoDoDiaWidget extends StatefulWidget {
  const SwitchPratoDoDiaWidget({
    super.key,
    bool? switchPratoDoDiaParameter,
    required this.itemIndex,
    required this.idRealProduto,
  }) : this.switchPratoDoDiaParameter = switchPratoDoDiaParameter ?? true;

  final bool switchPratoDoDiaParameter;
  final int? itemIndex;
  final int? idRealProduto;

  @override
  State<SwitchPratoDoDiaWidget> createState() => _SwitchPratoDoDiaWidgetState();
}

class _SwitchPratoDoDiaWidgetState extends State<SwitchPratoDoDiaWidget> {
  late SwitchPratoDoDiaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchPratoDoDiaModel());

    _model.switchValue = widget.switchPratoDoDiaParameter;
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
              .atualizaPratoDoDia(FFAppState().listaProdutosState.toList(),
                  widget.itemIndex, true)!
              .toList()
              .cast<dynamic>();
          safeSetState(() {});
          _model.resultadoPratoDoDia = await AtualizarPratoDoDiaCall.call(
            idProduto: widget.idRealProduto,
            tipo: 'PratoDoDia',
          );

          if ((_model.resultadoPratoDoDia?.succeeded ?? true)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'certo',
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
              .atualizaPratoDoDia(FFAppState().listaProdutosState.toList(),
                  widget.itemIndex, true)!
              .toList()
              .cast<dynamic>();
          safeSetState(() {});
          _model.resultadoPratoDoDiaCopy = await AtualizarPratoDoDiaCall.call(
            idProduto: widget.idRealProduto,
            tipo: 'Normal',
          );

          if ((_model.resultadoPratoDoDiaCopy?.succeeded ?? true)) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'certo',
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
