import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';



class HomePageScreen extends StatefulWidget {
  final String title;

  const HomePageScreen({Key key, this.title}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const HeaderWidget(text: "hello world!"),
            //Text("Hello world"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            HeaderWidget(text: "$_counter"),
            ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.green,
              ),
              child: Text("SAMPLE"),
              onPressed: () {},
                            ),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}