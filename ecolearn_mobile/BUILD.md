# 📱 EcoLearn APK Build Guide

## Prerequisites

```bash
# Install Flutter
flutter --version  # 3.13+

# Install dependencies
flutter pub get

# Check setup
flutter doctor
```

## Build APK

### Option 1: Release APK (Optimized)
```bash
# Build release APK
flutter build apk --release

# Output: build/app/outputs/flutter-apk/app-release.apk
```

### Option 2: App Bundle (For Play Store)
```bash
flutter build appbundle --release

# Output: build/app/outputs/bundle/release/app-release.aab
```

### Option 3: Split APKs (For Distribution)
```bash
flutter build apk --release --split-per-abi

# Outputs:
# - app-armeabi-v7a-release.apk (ARM 32-bit)
# - app-arm64-v8a-release.apk (ARM 64-bit)
# - app-x86_64-release.apk (Intel 64-bit)
```

## Signing Configuration

### Generate Keystore
```bash
keytool -genkey -v -keystore ecolearn.jks -keyalg RSA -keysize 2048 -validity 10000 -alias ecolearn
```

### Create key.properties
Create `android/key.properties`:
```
storePassword=YOUR_PASSWORD
keyPassword=YOUR_PASSWORD
keyAlias=ecolearn
storeFile=../ecolearn.jks
```

## Installation on Device

```bash
# Connect device via USB
adb devices

# Install APK
adb install build/app/outputs/flutter-apk/app-release.apk

# Run app
adb shell am start -n com.ecolearn.app/.MainActivity

# View logs
adb logcat | grep flutter
```

## Size Optimization

```bash
# Shrink resources
flutter build apk --release --shrink

# Expected size: ~80-120 MB
```

## Testing on Emulator

```bash
# List emulators
flutter emulators

# Launch emulator
flutter emulators --launch <emulator_id>

# Run app
flutter run --release
```

## Distribution

1. **Direct Download**: Host APK on server
2. **Play Store**: Upload AAB with signing
3. **Side-loading**: Share APK file
4. **GitHub Releases**: Auto-build with CI/CD

## Performance Metrics

- **Build Time**: ~3-5 minutes
- **APK Size**: ~100 MB (unoptimized)
- **App Size**: ~80 MB (optimized)
- **Startup Time**: <2 seconds
- **RAM Usage**: 50-150 MB

## Common Issues

### "Gradle build failed"
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter pub get
flutter build apk --release
```

### "Unable to find bundled Java version"
```bash
export PATH="/Applications/Android Studio.app/Contents/jre/Contents/Home/bin:$PATH"
```

### "Certificate verification failed"
```bash
flutter clean
flutter pub get --offline
```

## Next Steps

- [ ] Configure Firebase for analytics
- [ ] Setup Play Store console
- [ ] Create signing certificates
- [ ] Setup CI/CD for auto-builds
- [ ] Test on real devices
