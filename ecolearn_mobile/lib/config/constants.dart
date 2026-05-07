class AppConstants {
  // API
  static const String apiBaseUrl = 'http://10.0.2.2:8000';
  static const String apiVersion = 'v1';
  
  // Timeouts
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 30000;
  
  // Local storage
  static const int cacheSize = 100; // MB
  static const int maxOfflineData = 500; // MB
  
  // Animations
  static const int animationDuration = 300; // ms
  static const int slowAnimationDuration = 500; // ms
  
  // Pagination
  static const int pageSize = 20;
  
  // Mobile optimization
  static const int imageQuality = 60; // JPEG quality
  static const int imageMaxSize = 512; // pixels
  
  // Features
  static const bool enableOfflineMode = true;
  static const bool enableAudio = true;
  static const bool enableGamification = true;
}
