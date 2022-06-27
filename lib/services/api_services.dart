import 'package:base_/services/api_response.dart';
import 'package:http/http.dart';

class ApiServices {
  Future<ApiResponse> getData() async {
    Response response;
    try {
      response = await get(Uri.parse("https://reqres.in/api/users?page=2"));

      if (response.statusCode != 200) {
        return ApiResponse(
          data: null,
          errMsg: "Failed to load data",
          isErr: true,
        );
      }

      return ApiResponse(
        data: response.body,
        errMsg: "",
        isErr: false,
      );
    } catch (e) {
      return ApiResponse(
        data: null,
        errMsg: e.toString(),
        isErr: true,
      );
    }
  }
}
