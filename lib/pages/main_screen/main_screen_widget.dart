import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/crear_grupo/crear_grupo_widget.dart';
import '/pages/usuario_salir/usuario_salir_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'main_screen_model.dart';
export 'main_screen_model.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  late MainScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainScreenModel());

    _model.txbBuscarController ??= TextEditingController();
    _model.txbBuscarFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: SizedBox(
                          width: 200.0,
                          child: TextFormField(
                            controller: _model.txbBuscarController,
                            focusNode: _model.txbBuscarFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFF7165),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              suffixIcon: const Icon(
                                Icons.search,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.txbBuscarControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => FlutterFlowDropDown<String>(
                          controller:
                              _model.dropdownCreargrupoValueController ??=
                                  FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              '2aqni8vh' /* Unirse a grupo */,
                            ),
                            FFLocalizations.of(context).getText(
                              'c0lqaavx' /* Nuevo grupo */,
                            ),
                            FFLocalizations.of(context).getText(
                              'fv9zmmd2' /* Perfil */,
                            )
                          ],
                          onChanged: (val) async {
                            setState(
                                () => _model.dropdownCreargrupoValue = val);
                            if (_model.dropdownCreargrupoValue ==
                                'Unirse a grupo') {
                              _model.qRsalida =
                                  await FlutterBarcodeScanner.scanBarcode(
                                '#C62828', // scanning line color
                                FFLocalizations.of(context).getText(
                                  'd21z4nju' /* Cancel */,
                                ), // cancel button text
                                true, // whether to show the flash icon
                                ScanMode.BARCODE,
                              );
                            } else {
                              if (_model.dropdownCreargrupoValue ==
                                  'Nuevo grupo') {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const CrearGrupoWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              } else {
                                if (_model.dropdownCreargrupoValue ==
                                    'Perfil') {
                                  context.pushNamed('Perfil');
                                }
                              }
                            }

                            setState(() {});
                          },
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          maxHeight: MediaQuery.sizeOf(context).height * 0.4,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w300,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            '7p4t4zcf' /*   Opciones */,
                          ),
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          fillColor: const Color(0xFFFF7165),
                          elevation: 2.0,
                          borderColor: const Color(0xFFFF7165),
                          borderWidth: 2.0,
                          borderRadius: 10.0,
                          margin: const EdgeInsets.all(0.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: FutureBuilder<List<MiembroRow>>(
                    future: MiembroTable().queryRows(
                      queryFn: (q) => q.eq(
                        'correo',
                        currentUserEmail,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<MiembroRow> listviewGruposMiembroRowList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listviewGruposMiembroRowList.length,
                        itemBuilder: (context, listviewGruposIndex) {
                          final listviewGruposMiembroRow =
                              listviewGruposMiembroRowList[listviewGruposIndex];
                          return Builder(
                            builder: (context) => Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Actividades',
                                    queryParameters: {
                                      'id': serializeParam(
                                        listviewGruposMiembroRow.idgrp,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                onLongPress: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: const UsuarioSalirWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.1,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: const Color(0xFFFF7165),
                                      width: 2.0,
                                    ),
                                  ),
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: FutureBuilder<List<GrupoRow>>(
                                      future: GrupoTable().querySingleRow(
                                        queryFn: (q) => q.eq(
                                          'idgrp',
                                          listviewGruposMiembroRow.idgrp,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<GrupoRow> rwGrupoGrupoRowList =
                                            snapshot.data!;
                                        final rwGrupoGrupoRow =
                                            rwGrupoGrupoRowList.isNotEmpty
                                                ? rwGrupoGrupoRowList.first
                                                : null;
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(100.0),
                                                    bottomRight:
                                                        Radius.circular(100.0),
                                                    topLeft:
                                                        Radius.circular(100.0),
                                                    topRight:
                                                        Radius.circular(100.0),
                                                  ),
                                                  child: Image.network(
                                                    'https://picsum.photos/seed/233/600',
                                                    width: 50.0,
                                                    height: 50.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    rwGrupoGrupoRow!.namegrp,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 10.0)),
                                            ),
                                          ].divide(const SizedBox(width: 10.0)),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
