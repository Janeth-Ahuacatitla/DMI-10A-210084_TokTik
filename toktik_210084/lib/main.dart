import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_210084/config/theme/app_theme.dart';
import 'package:toktik_210084/presentation/providers/discover_provider.dart';
import 'package:toktik_210084/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}