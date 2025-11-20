import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/editor_screen.dart';
import 'screens/add_object_screen.dart';
import 'screens/properties_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/texturing_screen.dart';
import 'screens/rendering_screen.dart';
import 'screens/gallery_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (ctx) => WelcomeScreen(),
  '/editor': (ctx) => EditorScreen(),
  '/add-object': (ctx) => AddObjectScreen(),
  '/properties': (ctx) => PropertiesScreen(),
  '/settings': (ctx) => SettingsScreen(),
  '/texturing': (ctx) => TexturingScreen(),
  '/rendering': (ctx) => RenderingScreen(),
  '/gallery': (ctx) => GalleryScreen(),
};
