// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:streamskit_mobile/core/app/application.dart';
import 'package:streamskit_mobile/features/app/app.dart';
import 'package:streamskit_mobile/features/app/bloc/app_bloc.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  PaintingBinding.instance.imageCache.maximumSizeBytes =
      1024 * 1024 * 300; // 300 MB
    await Application.initialAppLication();
    runApp(
      MultiBlocProvider(
        providers: AppBloc.providers,
        child: const App(),
      ),
    );
}
