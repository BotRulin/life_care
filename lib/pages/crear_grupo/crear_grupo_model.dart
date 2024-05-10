import '/flutter_flow/flutter_flow_util.dart';
import 'crear_grupo_widget.dart' show CrearGrupoWidget;
import 'package:flutter/material.dart';

class CrearGrupoModel extends FlutterFlowModel<CrearGrupoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txb_nombregrupo widget.
  FocusNode? txbNombregrupoFocusNode;
  TextEditingController? txbNombregrupoController;
  String? Function(BuildContext, String?)? txbNombregrupoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txbNombregrupoFocusNode?.dispose();
    txbNombregrupoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
