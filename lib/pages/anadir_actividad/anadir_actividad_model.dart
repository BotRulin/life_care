import '/flutter_flow/flutter_flow_util.dart';
import 'anadir_actividad_widget.dart' show AnadirActividadWidget;
import 'package:flutter/material.dart';

class AnadirActividadModel extends FlutterFlowModel<AnadirActividadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txb_nombreact widget.
  FocusNode? txbNombreactFocusNode;
  TextEditingController? txbNombreactController;
  String? Function(BuildContext, String?)? txbNombreactControllerValidator;
  // State field(s) for txb_descact widget.
  FocusNode? txbDescactFocusNode;
  TextEditingController? txbDescactController;
  String? Function(BuildContext, String?)? txbDescactControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for chkbx_tareaprogaramada widget.
  bool? chkbxTareaprogaramadaValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txbNombreactFocusNode?.dispose();
    txbNombreactController?.dispose();

    txbDescactFocusNode?.dispose();
    txbDescactController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
