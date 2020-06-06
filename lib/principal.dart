import 'package:exemploget/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('passou por aqui');
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo para GET"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<Controller>(
              init: Controller(),
              builder: (_) {
                return Text(
                  '${_.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                //chamando da forma normal
                //  Get.to(Tela2());

                Get.toNamed('/segudaTela', arguments: 'teste para o titulo');
              },
              child: Text("Proxima tela"),
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                //chamando da forma normal
                //  Get.to(Tela2());

                Get.toNamed('/terceiraTela', arguments: 'teste para tela 3');
              },
              child: Text("tela 3"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Controller.to.incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Tela3 extends StatelessWidget {
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
