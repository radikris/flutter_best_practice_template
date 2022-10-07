import 'package:best_practice_template/app/network/api_error.dart';

extension ApiErrorX on ApiError {
  String get errorMessage => when(notImplemented: () {
        return 'error_not_implemented';
      }, requestCancelled: () {
        return 'error_request_cancel';
      }, internalServerError: () {
        return 'error_internal';
      }, notFound: (String reason) {
        return reason;
      }, serviceUnavailable: () {
        return 'error_service_unavailable';
      }, methodNotAllowed: () {
        return 'error_method_allowed';
      }, badRequest: () {
        return 'error_bad_request';
      }, unauthorisedRequest: () {
        return 'error_unauthorised_request';
      }, unexpectedError: () {
        return 'error_unexpected';
      }, requestTimeout: () {
        return 'error_request_timeout';
      }, noInternetConnection: () {
        return 'error_no_internet';
      }, conflict: () {
        return 'error_conflict';
      }, sendTimeout: () {
        return 'error_api_connection_timeout';
      }, unableToProcess: () {
        return 'error_process_data';
      }, defaultError: (String error) {
        return error;
      }, formatException: () {
        return 'error_unexpected';
      }, notAcceptable: () {
        return 'error_not_acceptable';
      });
}
