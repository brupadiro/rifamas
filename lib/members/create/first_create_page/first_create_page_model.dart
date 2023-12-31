import '/backend/api_requests/api_calls.dart';
import '/components/secondaary_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'first_create_page_widget.dart' show FirstCreatePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirstCreatePageModel extends FlutterFlowModel<FirstCreatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for secondaaryHeaderComponent component.
  late SecondaaryHeaderComponentModel secondaaryHeaderComponentModel;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (upload image)] action in Row widget.
  ApiCallResponse? apiResult8uu;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    secondaaryHeaderComponentModel =
        createModel(context, () => SecondaaryHeaderComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    secondaaryHeaderComponentModel.dispose();
    textController1?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
