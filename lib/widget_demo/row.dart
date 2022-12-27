import 'package:flutter/material.dart';

class RowDemo extends StatefulWidget {
  const RowDemo({Key? key}) : super(key: key);

  @override
  State<RowDemo> createState() => _RowDemoState();
}

class _RowDemoState extends State<RowDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Demo'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.purple,
        height: double.infinity,
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                color: Colors.red,
                child: const Text(
                  'First Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                color: Colors.green,
                child: const Text(
                  'Second Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),

          ],
        ),
      ),
    );
  }
}

//example 2

class RowDemoExpanded extends StatefulWidget {
  const RowDemoExpanded({Key? key}) : super(key: key);

  @override
  State<RowDemoExpanded> createState() => _RowDemoExpandedState();
}

class _RowDemoExpandedState extends State<RowDemoExpanded> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Column Demo'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: const Drawer(),
      body: Row(
        children: [
          Expanded(
            // flex: 2,
            child: Container(
              //height: 100.0,
                color: Colors.red,
                width: double.infinity,
                child: const Text(
                  'First Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
          ),
          Expanded(
            child: Container(
              // height: 100.0,
                color: Colors.green,
                width: double.infinity,
                child: const Text(
                  'Second Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
          ),
          Expanded(
            child: Container(
              // height: 100.0,
                color: Colors.blue,
                width: double.infinity,
                child: const Text(
                  'Third Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
          ),
          Expanded(
            child: Container(
              //height: 100.0,
                color: Colors.yellow,
                width: double.infinity,
                child: const Text(
                  'Fourth Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
          ),

        ],
      ),
    );
  }
}

