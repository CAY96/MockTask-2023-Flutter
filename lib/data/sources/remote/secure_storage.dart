import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  late final FlutterSecureStorage _storage;

  SecureStorageService() {
    _storage = const FlutterSecureStorage();
  }

  Future<String?> read(SecureStorageKey key) async {
    return await _storage.read(key: key.toString());
  }

  Future<void> write(SecureStorageKey key, dynamic value) async {
    await _storage.write(key: key.toString(), value: value);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }

  Future<void> delete(SecureStorageKey key) async {
    await _storage.delete(key: key.toString());
  }
}

enum SecureStorageKey {
  accessToken("ACCESS_TOKEN"),
  refreshToken("REFRESH_TOKEN");

  final String _code;
  const SecureStorageKey(this._code);

  String toCode() => _code;

  @override
  String toString() => toCode();

  factory SecureStorageKey.fromCode(String string) {
    return SecureStorageKey.values.firstWhere((value) => value._code == string);
  }
}
