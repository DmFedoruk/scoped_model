import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../scoped_models/scoped_counter.dart';
import 'widget1.dart';
import 'widget2.dart';
import 'widget3.dart';
import 'widget4.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final ScopedCounter scopedCounter = ScopedCounter();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedCounter>(
      model: scopedCounter,
      child: Scaffold(
        appBar: AppBar(title: const Text("Hello World with Scoped Model")),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Widget1(), Widget2(), Widget3(), Widget4()],
        )),
        floatingActionButton: FloatingActionButton(
            onPressed: () => scopedCounter.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add)),
      ),
    );
  }
}
