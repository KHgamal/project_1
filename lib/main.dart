import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/services/injection_container.dart';
import 'package:project_1/core/services/router.dart';
import 'package:project_1/generated/l10n.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await init();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colours.primaryColour,),
      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: generateFunction,
    );
  }
}
