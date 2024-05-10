import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'correo_q_r_model.dart';
export 'correo_q_r_model.dart';

class CorreoQRWidget extends StatefulWidget {
  const CorreoQRWidget({super.key});

  @override
  State<CorreoQRWidget> createState() => _CorreoQRWidgetState();
}

class _CorreoQRWidgetState extends State<CorreoQRWidget> {
  late CorreoQRModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorreoQRModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FFButtonWidget(
              onPressed: () {
                print('topbar_aadirusuario pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                '9cnrv90s' /* Añadir usuario al grupo */,
              ),
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.3,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xCCFF7165),
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Ubuntu',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w300,
                    ),
                elevation: 0.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 22.0,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('btn_anadirporcorreo pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                'khmsu7ap' /* Añadir por correo */,
              ),
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.3,
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
            FFButtonWidget(
              onPressed: () {
                print('btn_generarqr pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                'mriaysft' /* Generar QR */,
              ),
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.3,
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
      ),
    );
  }
}
