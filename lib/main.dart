import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: OutlinedButton(onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              height: 300,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(title: Text("One"),subtitle: Text("This is one"), trailing: Icon(Icons.comment),),
                    ListTile(title: Text("Two"),subtitle: Text("This is two"), trailing: Icon(Icons.comment),),
                    ListTile(title: Text("Three"),subtitle: Text("This is three"), trailing: Icon(Icons.comment),),
                    ListTile(title: Text("Four"),subtitle: Text("This is four"), trailing: Icon(Icons.comment),),
                    ListTile(title: Text("Five"),subtitle: Text("This is five"), trailing: Icon(Icons.comment),),
                    ListTile(title: Text("Six"),subtitle: Text("This is six"), trailing: Icon(Icons.comment),)
                  ],
                ),
              ),
            );
          });
        },
            child: Text("Click me")),
      ),
    );
  }
}
