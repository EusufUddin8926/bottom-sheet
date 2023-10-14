import 'package:flutter/material.dart';
import 'Data.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listData = [
    {'title': "One", 'subTitle': "This is one"},
    {'title': "Two", 'subTitle': "This is Two"},
    {'title': "Three", 'subTitle': "This is Three"},
    {'title': "Four", 'subTitle': "This is Four"},
    {'title': "Five", 'subTitle': "This is Five"},
    {'title': "Six", 'subTitle': "This is Six"},
    {'title': "Seven", 'subTitle': "This is Seven"},
    {'title': "Eight", 'subTitle': "This is Eight"},
    {'title': "Nine", 'subTitle': "This is Nine"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: false,
                  builder: (context) {
                    return Container(
                      height: 300,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: listData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: ListTile(
                              title: Text(listData[index]['title'].toString()),
                              subtitle:
                                  Text(listData[index]['subTitle'].toString()),
                              trailing: Icon(Icons.comment),
                              onTap: () {
                                print(listData[index]['title'].toString());
                              },
                            ),
                          );
                        },
                      ),
                    );
                  });
            },
            child: Text("Click me")),
      ),
    );
  }
}
