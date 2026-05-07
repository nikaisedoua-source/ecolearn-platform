# Flutter
-keep class io.flutter.** { *; }
-keep class io.flutter.embedding.** { *; }

# Dio
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep class okio.** { *; }

# Retrofit
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }

# Hive
-keep class com.example.** { *; }
-keep @com.hive.annotation.HiveType class * { *; }

# Keep application classes
-keep class com.ecolearn.** { *; }

# Optimization
-optimizationpasses 5
-dontusemixedcaseclassnames
-verbose
