// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: unused_import
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_event.dart';

import 'package:gitcentral/shared/services/global_messenger/global_messenger_service.dart';
import 'package:gitcentral/shared/services/storage/storage_service.dart';
import 'package:gitcentral/shared/utils/helpers/helper.dart';

class DioInterceptor extends QueuedInterceptor {
  final StorageService storageService;
  final GlobalMessengerService globalMessengerService;

  DioInterceptor({
    required this.storageService,
    required this.globalMessengerService,
  });

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await storageService.loadAccessToken();

    if (accessToken != null) {
      final newOptions = await _attachRequestHeader(options, accessToken);
      return super.onRequest(newOptions, handler);
    } else {
      final getTokenOptions =
          options.copyWith(headers: {'Accept': 'application/json'});
      return super.onRequest(getTokenOptions, handler);
    }
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    if ((response.statusCode ?? 500) <= 500 &&
        globalMessengerService.isSnackbarShowing) {
      globalMessengerService.messenger.sink.add(OperationRestored());
    }

    if ((response.statusCode ?? 503) > 500) {
      globalMessengerService.messenger.sink.add(MaintenanceEvent());
    }

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionError) {
      globalMessengerService.messenger.sink.add(NoNetwork());
    }
    super.onError(err, handler);
  }

  Future<RequestOptions> _attachRequestHeader(
    RequestOptions options,
    String accessToken,
  ) async {
    try {
      if (Helper.isNotNullAndNotEmpty(accessToken)) {
        return options.copyWith(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'Connection': 'keep-alive',
            'Accept': 'application/json'
          },
        );
      } else {
        throw Exception('attachRequestHeader Error');
      }
    } catch (e, s) {
      throw Exception('attachRequestHeader: $e\n$s');
    }
  }
}
