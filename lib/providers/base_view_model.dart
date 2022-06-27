import 'package:base_/enum/view_state.dart';
import 'package:base_/providers/getIt.dart';
import 'package:base_/services/navigation_service.dart';
import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  final navigationService = getIt<NavigationService>();

  ViewState _state = ViewState.empty;
  ViewState get state => _state;
  void setState(ViewState state) {
    _state = state;
    notifyListeners();
  }
}
