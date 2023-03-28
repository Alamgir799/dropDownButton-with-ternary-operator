import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownvalue = 'video';

  var items = [
    'video',
    'blog',
    'podcast',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  dropdownvalue = newValue!;
                  setState(() {});
                }),
            dropdownvalue == "video"
                ? Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  )
                : dropdownvalue == "blog"
                    ? Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
          ],
        ),
      )),
    );
  }
}
