import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txb_correo widget.
  FocusNode? txbCorreoFocusNode;
  TextEditingController? txbCorreoController;
  String? Function(BuildContext, String?)? txbCorreoControllerValidator;
  // State field(s) for txb_contrasena widget.
  FocusNode? txbContrasenaFocusNode;
  TextEditingController? txbContrasenaController;
  late bool txbContrasenaVisibility;
  String? Function(BuildContext, String?)? txbContrasenaControllerValidator;
  // State field(s) for txb_repetircontrasena widget.
  FocusNode? txbRepetircontrasenaFocusNode;
  TextEditingController? txbRepetircontrasenaController;
  late bool txbRepetircontrasenaVisibility;
  String? Function(BuildContext, String?)?
      txbRepetircontrasenaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txbContrasenaVisibility = false;
    txbRepetircontrasenaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txbCorreoFocusNode?.dispose();
    txbCorreoController?.dispose();

    txbContrasenaFocusNode?.dispose();
    txbContrasenaController?.dispose();

    txbRepetircontrasenaFocusNode?.dispose();
    txbRepetircontrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
