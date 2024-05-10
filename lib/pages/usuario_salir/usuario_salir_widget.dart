import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/correo_q_r/correo_q_r_widget.dart';
import 'package:flutter/material.dart';
import 'usuario_salir_model.dart';
export 'usuario_salir_model.dart';

class UsuarioSalirWidget extends StatefulWidget {
  const UsuarioSalirWidget({super.key});

  @override
  State<UsuarioSalirWidget> createState() => _UsuarioSalirWidgetState();
}

class _UsuarioSalirWidgetState extends State<UsuarioSalirWidget> {
  late UsuarioSalirModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsuarioSalirModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      constraints: BoxConstraints(
        minWidth: MediaQuery.sizeOf(context).width * 0.4,
        minHeight: MediaQuery.sizeOf(context).height * 0.2,
        maxWidth: MediaQuery.sizeOf(context).width * 1.0,
        maxHeight: MediaQuery.sizeOf(context).height * 0.2,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).tertiary,
          width: 3.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Builder(
            builder: (context) => FFButtonWidget(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: const AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: const CorreoQRWidget(),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              text: FFLocalizations.of(context).getText(
                'wy223wmx' /* Añadir usuario al grupo */,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 60.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Colors.white,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Ubuntu',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w300,
                    ),
                elevation: 0.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 0.0,
                ),
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              context.safePop();
            },
            text: FFLocalizations.of(context).getText(
              'zqn9z2hk' /* Eliminar/Salir */,
            ),
            options: FFButtonOptions(
              width: double.infinity,
              height: 60.0,
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Colors.white,
              textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Ubuntu',
                    fontSize: 25.0,
                    fontWeight: FontWeight.w300,
                  ),
              elevation: 0.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
