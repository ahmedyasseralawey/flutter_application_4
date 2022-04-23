// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:camera/camera.dart';

// Project imports:
import 'package:flutter_application_4/screen/chat4.dart';
import 'package:flutter_application_4/screen/chat7.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyChat(),
      debugShowCheckedModeBanner: false,
    );
  }
}
