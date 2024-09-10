import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    throw UnimplementedError();
  }
}

// class ThemeCubit extends HydratedCubit<ThemeMode> {
//   ThemeCubit() : super(ThemeMode.system);

//   // Обновление темы
//   void updateTheme(ThemeMode themeMode) => emit(themeMode);

//   // Восстановление из JSON
//   @override
//   ThemeMode? fromJson(Map<String, dynamic> json) {
//     final themeString = json['theme'] as String?;
//     switch (themeString) {
//       case 'light':
//         return ThemeMode.light;
//       case 'dark':
//         return ThemeMode.dark;
//       case 'system':
//         return ThemeMode.system;
//       default:
//         return ThemeMode.system; // Значение по умолчанию
//     }
//   }

//   // Сохранение в JSON
//   @override
//   Map<String, dynamic>? toJson(ThemeMode state) {
//     late String themeString;
//     switch (state) {
//       case ThemeMode.light:
//         themeString = 'light';
//         break;
//       case ThemeMode.dark:
//         themeString = 'dark';
//         break;
//       case ThemeMode.system:
//         themeString = 'system';
//         break;
//     }
//     return {'theme': themeString};
//   }
// }

