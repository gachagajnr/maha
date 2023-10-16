
import 'package:flutter_feathersjs/flutter_feathersjs.dart';

import '../helpers/api.dart';
import '../main.dart';
import '../models/activity.dart';

class ActivitiesApiService {
  Future<APIResponse<List<Activity>>> getActivities() async {
    List<Activity>? activities;
    String? error;
    try {
      Map<String, dynamic> response =
      await feathers.service('activities').find({"isPublished": true});
      activities = List<Map<String, dynamic>>.from(response["data"])
          .map((map) => Activity.fromMap(map))
          .toList();
    } on FeatherJsError catch (e) {
      if (e.type == FeatherJsErrorType.IS_CANNOT_SEND_REQUEST) {
        error = "Cannot reach server";
      } else if (e.type == FeatherJsErrorType.IS_AUTH_FAILED_ERROR) {
        error = "Please check your credentials";
      } else if (e.type == FeatherJsErrorType.IS_CONFLICT_ERROR) {
        error = "Duplicate not allowed, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_NOT_FOUND_ERROR) {
        error = "Not found, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_FORBIDDEN_ERROR) {
        error = "Forbidden request, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_BAD_REQUEST_ERROR) {
        error = "Bad request, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_TIMEOUT_ERROR) {
        error = "Timeout error, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_BAD_GATE_WAY_ERROR) {
        error = "Bad gateway, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_FORM_DATA_ERROR) {
        error = "Invalid inputs, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_GENERAL_ERROR) {
        error = "An error occurred, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_INVALID_CREDENTIALS_ERROR) {
        error = "Invalid credentials!";
      } else if (e.type == FeatherJsErrorType.IS_JWT_EXPIRED_ERROR) {
        error = "Not Authenticated, please login!";
      } else if (e.type == FeatherJsErrorType.IS_JWT_INVALID_ERROR) {
        error = "Not Authenticated, please login!";
      } else if (e.type == FeatherJsErrorType.IS_NOT_AUTHENTICATED_ERROR) {
        error = "Not Authenticated, please login!";
      } else if (e.type == FeatherJsErrorType.IS_REST_ERROR) {
        error = "An error occurred, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_JWT_TOKEN_NOT_FOUND_ERROR) {
        error = "Not Authenticated, please login!";
      } else if (e.type == FeatherJsErrorType.IS_UNAVAILABLE_ERROR) {
        error = "Service is unavailable!";
      } else if (e.type == FeatherJsErrorType.IS_UNKNOWN_ERROR) {
        error = "Unknown error occurred, please retry!";
      } else if (e.type == FeatherJsErrorType.IS_UNPROCESSABLE_ERROR) {
        error = "Un processable request!";
      } else if (e.type == FeatherJsErrorType.IS_NOT_FOUND_ERROR) {
        error = "Not found, please retry!";
      } else {
        error = "Unexpected Error occurred!";
      }
    } catch (e) {
      error = "Unexpected error occurred, please retry!";
    }
    return APIResponse(errorMessage: error, data: activities);
  }

}
