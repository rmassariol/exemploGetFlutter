//https://www.youtube.com/watch?v=JUGkEm-fDo0

//https://pub.dev/packages/get

import 'package:exemploget/principal.dart';
import 'package:exemploget/tela2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    //normal
    //  home: MyHomePage(),

    initialRoute: '/',
    //rota nomeada
    namedRoutes: {
      '/': GetRoute(
        page: MyHomePage(),
      ),
      '/segudaTela': GetRoute(
        page: Tela2(),
      ),
      '/terceiraTela': GetRoute(
        page: Tela3(),
      )
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
