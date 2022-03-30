import 'package:flutter/material.dart';
import 'package:mati_plugin_flutter/mati_plugin_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bödön 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void showMetaMapFlow() {
    MetaMapFlutter.showMetaMapFlow("61dc2317e05524001d482f04", "61e7cb3d148f52001c48e021", {});
    MetaMapFlutter.resultCompleter.future.then((result) => Fluttertoast.showToast(
        msg: result is ResultSuccess ? "Zsirosság ${result.verificationId}" : "Nademicsinááálsz",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bödön 2"),
        ),
        body: Center(
            child: ElevatedButton(
              onPressed: showMetaMapFlow,
              child: const Text('Itt az idő'),
            )
        )
    );
  }
}