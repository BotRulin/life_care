import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/crear_grupo/crear_grupo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'componente_principal_model.dart';
export 'componente_principal_model.dart';

class ComponentePrincipalWidget extends StatefulWidget {
  const ComponentePrincipalWidget({super.key});

  @override
  State<ComponentePrincipalWidget> createState() =>
      _ComponentePrincipalWidgetState();
}

class _ComponentePrincipalWidgetState extends State<ComponentePrincipalWidget> {
  late ComponentePrincipalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentePrincipalModel());

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
      width: double.infinity,
      height: 1.0,
      constraints: BoxConstraints(
        minWidth: MediaQuery.sizeOf(context).width * 0.4,
        minHeight: MediaQuery.sizeOf(context).height * 0.2,
        maxWidth: MediaQuery.sizeOf(context).width * 1.0,
        maxHeight: MediaQuery.sizeOf(context).height * 0.2,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
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
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FFButtonWidget(
            onPressed: () async {
              _model.qrValue = await FlutterBarcodeScanner.scanBarcode(
                '#C62828', // scanning line color
                FFLocalizations.of(context).getText(
                  'rzekj22q' /* Cancelar */,
                ), // cancel button text
                true, // whether to show the flash icon
                ScanMode.QR,
              );

              setState(() {});
            },
            text: FFLocalizations.of(context).getText(
              'x900xyev' /* Unirse a grupo */,
            ),
            options: FFButtonOptions(
              width: double.infinity,
              height: 30.0,
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).tertiary,
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
                      child: const CrearGrupoWidget(),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              text: FFLocalizations.of(context).getText(
                'wum6rfld' /* Nuevo grupo */,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 30.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).tertiary,
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
              context.pushNamed('Perfil');
            },
            text: FFLocalizations.of(context).getText(
              'nw064ys6' /* Perfil */,
            ),
            options: FFButtonOptions(
              width: double.infinity,
              height: 30.0,
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).tertiary,
              textStyle: FlutterFlowTheme.of(context).titleLarge.override(
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
