import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isFindingRide = false;
  bool get isFindingRide => _isFindingRide;
  set isFindingRide(bool _value) {
    _isFindingRide = _value;
  }

  String _routeDistance = '';
  String get routeDistance => _routeDistance;
  set routeDistance(String _value) {
    _routeDistance = _value;
  }

  String _routeDuration = '';
  String get routeDuration => _routeDuration;
  set routeDuration(String _value) {
    _routeDuration = _value;
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
