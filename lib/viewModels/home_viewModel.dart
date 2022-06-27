import 'dart:developer';

import 'package:base_/enum/view_state.dart';
import 'package:base_/providers/base_view_model.dart';
import 'package:base_/providers/getIt.dart';
import 'package:base_/services/api_services.dart';

class HomeViewModel extends BaseViewModel {
  final ApiServices _apiServices = getIt<ApiServices>();

  Future<void> getData() async {
    try {
      setState(ViewState.loading);
      await _apiServices.getData().then((value) {
        log("VALUE :: ${value.data}");
      });
      setState(ViewState.loaded);
    } catch (e) {
      log("ERR :: $e");
      setState(ViewState.error);
    }
  }
}
