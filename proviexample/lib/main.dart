import 'package:flutter/material.dart';
import 'package:proviexample/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {

   // final counter = context.watch<CounterProvider>();
    final counter = Provider.of<CounterProvider>(context);

    return Scaffold(

      body:Center(
              child: Column(
                children: [
                  Text("Contador: ${counter.count.toString()}"),
                  ElevatedButton(onPressed: (){
                    context.read<CounterProvider>().increment();
                  }, child: Text('clique'))
                ],
              ),
            )
    );
  }
}


