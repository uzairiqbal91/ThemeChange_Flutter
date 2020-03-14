import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themechange_flutter/screens/DashboardScreen.dart';

import 'models/ThemeChange.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeChange>(create: (_) => ThemeChange(),),

      ],
      child: DashboardScreen()









    );
  }
}


