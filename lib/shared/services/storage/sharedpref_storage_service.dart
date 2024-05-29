import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/shared/services/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefsStorageServiceProvider = Provider.autoDispose(
  (ref) {
    ref.keepAlive();
    return SharedPrefsStorageService(ref: ref);
  },
);

class SharedPrefsStorageService extends StorageService {
  final Ref ref;
  SharedPrefsStorageService({required this.ref});

  late final SharedPreferences sharedPrefs;
  final String kAccessTokenKey = 'accessToken';
  String? _accessToken;

  @override
  Future<void> initStorage() async {
    try {
      sharedPrefs = await SharedPreferences.getInstance();
    } catch (e, s) {
      throw Exception('initStorage: $e\n$s');
    }
  }

  @override
  Future<void> setAccessToken(String token) async {
    try {
      await sharedPrefs.setString(kAccessTokenKey, token);
      _accessToken = token;
    } catch (e, s) {
      await sharedPrefs.clear();
      throw Exception('setAccessToken: $e\n$s');
    }
  }

  @override
  FutureOr<String?> loadAccessToken() async {
    try {
      if (_accessToken != null) {
        return _accessToken;
      }
      return sharedPrefs.getString(kAccessTokenKey);
    } catch (e, s) {
      await sharedPrefs.clear();
      throw Exception('loadAccessToken: $e\n$s');
    }
  }

  @override
  Future<void> clearToken() async {
    try {
      _accessToken = null;
      await sharedPrefs.remove(kAccessTokenKey);
    } catch (e, s) {
      await sharedPrefs.clear();
      throw Exception('clearToken: $e\n$s');
    }
  }
}
