import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
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

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txbContrasenaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txbCorreoFocusNode?.dispose();
    txbCorreoController?.dispose();

    txbContrasenaFocusNode?.dispose();
    txbContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
