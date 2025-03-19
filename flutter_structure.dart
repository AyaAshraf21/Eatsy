import 'dart:io';

void main() {
  final directories = [
    // 🌍 App Configuration
    'lib/app', // Main app configurations (entry point, app setup)

    // 🔥 Core (Shared utilities across the app)
    'lib/core/database', // Local database (Hive, SQLite)
    'lib/core/utils', // Helper functions (formatters, validators, etc.)
    'lib/core/themes', // Light & dark mode themes
    'lib/core/routes', // App navigation (GoRouter, AutoRoute)
    'lib/core/locale', // Localization files
    'lib/core/widgets', // Global reusable widgets (buttons, dialogs)
    'lib/core/di', // Dependency Injection (GetIt, Riverpod)
    'lib/core/errors', // Custom error handling (exceptions, failures)

    // 📦 Features (Each feature is self-contained)
    // 🔹 Home Feature
    'lib/feature/home/data/models', // Data models for Home
    'lib/feature/home/data/datasources', // API / local data sources
    'lib/feature/home/data/repository', // Repository implementations
    'lib/feature/home/domain/entities', // Business logic models
    'lib/feature/home/domain/repository', // Repository abstraction
    'lib/feature/home/domain/usecases', // Business logic operations
    'lib/feature/home/presentation/bloc', // State management (Bloc, Provider)
    'lib/feature/home/presentation/pages', // Screens (HomePage, DetailsPage)
    'lib/feature/home/presentation/widgets', // UI Components (Cards, Lists)

    // 🔹 Cart Feature
    'lib/feature/cart/data/models',
    'lib/feature/cart/data/datasources',
    'lib/feature/cart/data/repository',
    'lib/feature/cart/domain/entities',
    'lib/feature/cart/domain/repository',
    'lib/feature/cart/domain/usecases',
    'lib/feature/cart/presentation/bloc',
    'lib/feature/cart/presentation/pages',
    'lib/feature/cart/presentation/widgets',

    // 🔹 Orders Feature
    'lib/feature/orders/data/models',
    'lib/feature/orders/data/datasources',
    'lib/feature/orders/data/repository',
    'lib/feature/orders/domain/entities',
    'lib/feature/orders/domain/repository',
    'lib/feature/orders/domain/usecases',
    'lib/feature/orders/presentation/bloc',
    'lib/feature/orders/presentation/pages',
    'lib/feature/orders/presentation/widgets',

    // 🔹 Profile Feature (UI only, no models or API calls)
    'lib/feature/profile/presentation/pages',
    'lib/feature/profile/presentation/widgets',
  ];

  for (var dir in directories) {
    final directory = Directory(dir);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('Folder Created: $dir');
    }
  }

  File('lib/app/app_name.dart').createSync();
  File('lib/main.dart').createSync();
}
