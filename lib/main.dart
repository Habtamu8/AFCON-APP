import 'package:afcon_app/features/Login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://uoaaxktetguzreuxcfxc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVvYWF4a3RldGd1enJldXhjZnhjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYxMTI4NTAsImV4cCI6MjA4MTY4ODg1MH0.POxRDF9AF1pMjfp91m3uHkopsEBMWGr0_z2gg6cP3w4',
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AFCON App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginScreen(),
    );
  }
}
