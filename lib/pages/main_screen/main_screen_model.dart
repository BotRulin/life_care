import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'main_screen_widget.dart' show MainScreenWidget;
import 'package:flutter/material.dart';

class MainScreenModel extends FlutterFlowModel<MainScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txb_buscar widget.
  FocusNode? txbBuscarFocusNode;
  TextEditingController? txbBuscarController;
  String? Function(BuildContext, String?)? txbBuscarControllerValidator;
  // State field(s) for dropdown_creargrupo widget.
  String? dropdownCreargrupoValue;
  FormFieldController<String>? dropdownCreargrupoValueController;
  var qRsalida = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txbBuscarFocusNode?.dispose();
    txbBuscarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
