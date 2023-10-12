import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String countParticipants(List<dynamic> metadata) {
  int count = metadata.where((item) => item['key'] == '_participant_id').length;
  return count.toString();
}

String maxParticipants(List<dynamic> metadata) {
  try {
    var object = metadata.firstWhere((item) => item['key'] == '_max_tickets');
    return object["value"].toString();
  } catch (e) {
    print('Ocurrió un error: $e');
    return "0";
  }
}

String? findProductState(List<dynamic> metadata) {
  try {
    var object = metadata.firstWhere((item) => item['key'] == '_product_state');
    return object["value"];
  } catch (e) {
    print('Ocurrió un error: $e');
    return "N/A";
  }
}

String? filterPapeletas(
  dynamic metadata,
  int number,
) {
  String keyToFind = '_papeletas_option_$number';

  for (Map<String, dynamic> map in metadata) {
    if (map['key'] == keyToFind) {
      return map['value'];
    }
  }

  return 'N/A';
}
