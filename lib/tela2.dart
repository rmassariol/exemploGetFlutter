import 'package:exemploget/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tela2 extends StatefulWidget {
  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments),
      ),
      body: Center(
        child: GetBuilder<Controller>(
            init: Controller(),
            builder: (_) {
              return Text(
                Controller.to.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Controller.to.incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This traili
    );
  }
}
