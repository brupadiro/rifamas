import '/backend/api_requests/api_calls.dart';
import '/components/bottom_navigation_widget_product_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for bottomNavigationWidgetProduct component.
  late BottomNavigationWidgetProductModel bottomNavigationWidgetProductModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomNavigationWidgetProductModel =
        createModel(context, () => BottomNavigationWidgetProductModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bottomNavigationWidgetProductModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
