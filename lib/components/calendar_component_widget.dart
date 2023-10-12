import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_component_model.dart';
export 'calendar_component_model.dart';

class CalendarComponentWidget extends StatefulWidget {
  const CalendarComponentWidget({Key? key}) : super(key: key);

  @override
  _CalendarComponentWidgetState createState() =>
      _CalendarComponentWidgetState();
}

class _CalendarComponentWidgetState extends State<CalendarComponentWidget> {
  late CalendarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: FlutterFlowCalendar(
        color: FlutterFlowTheme.of(context).primary,
        iconColor: FlutterFlowTheme.of(context).secondaryText,
        weekFormat: false,
        weekStartsMonday: false,
        rowHeight: 64.0,
        onChange: (DateTimeRange? newSelectedDate) async {
          _model.calendarSelectedDay = newSelectedDate;
          setState(() {
            FFAppState().fechaSorteo =
                dateTimeFormat('d/M/y', _model.calendarSelectedDay!.start);
          });
          setState(() {});
        },
        titleStyle: FlutterFlowTheme.of(context).headlineSmall,
        dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge,
        dateStyle: FlutterFlowTheme.of(context).bodyMedium,
        selectedDateStyle: FlutterFlowTheme.of(context).titleSmall,
        inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium,
      ),
    );
  }
}
