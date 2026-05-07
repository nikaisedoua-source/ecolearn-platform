import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  static const String userBox = 'user';
  static const String coursesBox = 'courses';
  static const String progressBox = 'progress';
  static const String cacheBox = 'cache';
  
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(userBox);
    await Hive.openBox(coursesBox);
    await Hive.openBox(progressBox);
    await Hive.openBox(cacheBox);
  }
  
  static Box get userStorage => Hive.box(userBox);
  static Box get coursesStorage => Hive.box(coursesBox);
  static Box get progressStorage => Hive.box(progressBox);
  static Box get cacheStorage => Hive.box(cacheBox);
  
  // User methods
  static Future<void> saveUser(Map<String, dynamic> user) async {
    await userStorage.put('currentUser', user);
  }
  
  static Map<String, dynamic>? getUser() {
    return userStorage.get('currentUser');
  }
  
  static Future<void> clearUser() async {
    await userStorage.delete('currentUser');
  }
  
  // Progress methods
  static Future<void> saveProgress(String lessonId, Map<String, dynamic> progress) async {
    await progressStorage.put(lessonId, progress);
  }
  
  static Map<String, dynamic>? getProgress(String lessonId) {
    return progressStorage.get(lessonId);
  }
  
  // Cache methods
  static Future<void> saveCache(String key, dynamic value) async {
    await cacheStorage.put(key, value);
  }
  
  static dynamic getCache(String key) {
    return cacheStorage.get(key);
  }
  
  static Future<void> clearCache() async {
    await cacheStorage.clear();
  }
}
