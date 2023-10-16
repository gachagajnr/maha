class API {
  static const baseUrl = 'http://10.0.2.2:3030';
}

class APIResponse<T> {
  final String? errorMessage;
  final T? data;
  APIResponse({
    required this.errorMessage,
    required this.data,
  }) : assert(
  (errorMessage == null && data != null) || (errorMessage != null && data == null),
  );

}
