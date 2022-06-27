class ApiResponse {
  final dynamic data;
  final String errMsg;
  final bool isErr;

  ApiResponse({this.data, this.errMsg = '', this.isErr = false});
}
