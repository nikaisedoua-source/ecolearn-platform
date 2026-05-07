# 📱 EcoLearn Mobile App

Plateforme éducative IA gratuite pour les concours d'ingénieur en environnement.

## 🎯 Features

✅ Offline-first architecture  
✅ AI-powered learning  
✅ Gamification system  
✅ Audio support (TTS)  
✅ Adaptive exams  
✅ Mobile optimized  
✅ Low bandwidth mode  

## 📋 Requirements

- Flutter 3.13+
- Dart 3.1+
- Android SDK 21+ (API level 21)
- Minimum 4GB RAM
- 500MB free storage

## 🚀 Quick Start

```bash
# Get dependencies
flutter pub get

# Run on device/emulator
flutter run

# Build APK
flutter build apk --release
```

## 📦 Project Structure

```
lib/
├── main.dart                 # App entry point
├── config/
│   ├── theme.dart           # Material 3 theme
│   ├── routes.dart          # Navigation routes
│   └── constants.dart       # App constants
├── features/
│   ├── auth/                # Authentication
│   ├── home/                # Home screen
│   ├── learning/            # Learning module
│   ├── quiz/                # Quiz system
│   ├── chat/                # Chat IA
│   └── analytics/           # Analytics
└── core/
    ├── network/             # API calls
    ├── database/            # Local storage
    ├── audio/               # TTS
    └── utils/               # Utilities
```

## 🔧 Configuration

Edit `lib/config/constants.dart` for:
- API base URL
- Cache sizes
- Animation durations
- Image quality

## 📱 Device Testing

```bash
# List connected devices
adb devices

# Run on specific device
flutter run -d <device_id>

# Debug logs
adb logcat | grep flutter
```

## 🏗️ Build Variants

```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# App Bundle (Play Store)
flutter build appbundle --release

# Split APKs
flutter build apk --release --split-per-abi
```

## 📈 Performance Optimization

- Images compressed to 60% quality
- Lazy loading for list views
- Caching of network requests
- Offline database support
- Minimal animation on low-end devices

## 🔐 Security

- JWT token storage (encrypted)
- SSL certificate pinning ready
- Input validation
- API rate limiting

## 🐛 Troubleshooting

### Build fails
```bash
flutter clean
flutter pub get
flutter build apk --release
```

### No devices found
```bash
flutter devices
adb kill-server
adb start-server
```

### Memory issues
- Reduce image quality in constants
- Disable animations on low-end devices
- Use smaller font sizes

## 📊 Analytics & Monitoring

Firebase Analytics integrated for:
- User engagement
- Feature usage
- Crash reporting
- Performance metrics

## 🤝 Contributing

1. Create feature branch
2. Make changes
3. Submit PR with tests
4. Wait for review

## 📄 License

Open Source - MIT License

## 🌐 Support

For issues: https://github.com/nikaisedoua-source/ecolearn-platform/issues
