import 'dart:async';

/// Extend this class for a different key-value storage package
abstract class StorageService {
  void initStorage() {}
  Future<void> setAccessToken(String token) async {}
  FutureOr<String?> loadAccessToken() async {
    return null;
  }
}
