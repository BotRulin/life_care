import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txb_correo widget.
  FocusNode? txbCorreoFocusNode;
  TextEditingController? txbCorreoController;
  String? Function(BuildContext, String?)? txbCorreoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txbCorreoFocusNode?.dispose();
    txbCorreoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
