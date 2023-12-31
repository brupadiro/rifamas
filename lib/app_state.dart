import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_jwtuser')) {
        try {
          _jwtuser = jsonDecode(prefs.getString('ff_jwtuser') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _loggedIn = prefs.getBool('ff_loggedIn') ?? _loggedIn;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _search = '';
  String get search => _search;
  set search(String _value) {
    _search = _value;
  }

  dynamic _jwtuser;
  dynamic get jwtuser => _jwtuser;
  set jwtuser(dynamic _value) {
    _jwtuser = _value;
    prefs.setString('ff_jwtuser', jsonEncode(_value));
  }

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;
  set loggedIn(bool _value) {
    _loggedIn = _value;
    prefs.setBool('ff_loggedIn', _value);
  }

  String _maximoCuotas = '1';
  String get maximoCuotas => _maximoCuotas;
  set maximoCuotas(String _value) {
    _maximoCuotas = _value;
  }

  String _maximoSorteos = '1';
  String get maximoSorteos => _maximoSorteos;
  set maximoSorteos(String _value) {
    _maximoSorteos = _value;
  }

  String _nombreRegalo = '';
  String get nombreRegalo => _nombreRegalo;
  set nombreRegalo(String _value) {
    _nombreRegalo = _value;
  }

  String _fechaSorteo = '';
  String get fechaSorteo => _fechaSorteo;
  set fechaSorteo(String _value) {
    _fechaSorteo = _value;
  }

  String _descripcionRegalo = '';
  String get descripcionRegalo => _descripcionRegalo;
  set descripcionRegalo(String _value) {
    _descripcionRegalo = _value;
  }

  String _tituloMembresia = '';
  String get tituloMembresia => _tituloMembresia;
  set tituloMembresia(String _value) {
    _tituloMembresia = _value;
  }

  String _descripcionMembresia = '';
  String get descripcionMembresia => _descripcionMembresia;
  set descripcionMembresia(String _value) {
    _descripcionMembresia = _value;
  }

  int _idMembresy = 0;
  int get idMembresy => _idMembresy;
  set idMembresy(int _value) {
    _idMembresy = _value;
  }

  String _urlMemebresia = '';
  String get urlMemebresia => _urlMemebresia;
  set urlMemebresia(String _value) {
    _urlMemebresia = _value;
  }

  String _currentBalance = '0.0';
  String get currentBalance => _currentBalance;
  set currentBalance(String _value) {
    _currentBalance = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
