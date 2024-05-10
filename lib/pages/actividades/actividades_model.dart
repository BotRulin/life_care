import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'actividades_widget.dart' show ActividadesWidget;
import 'package:flutter/material.dart';

class ActividadesModel extends FlutterFlowModel<ActividadesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // State field(s) for chkbx_actividad widget.

  Map<ActividadRow, bool> chkbxActividadValueMap = {};
  List<ActividadRow> get chkbxActividadCheckedItems =>
      chkbxActividadValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
