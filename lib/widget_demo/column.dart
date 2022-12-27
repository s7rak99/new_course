import 'package:flutter/material.dart';

class ColumnDemo extends StatefulWidget {
  const ColumnDemo({Key? key}) : super(key: key);

  @override
  State<ColumnDemo> createState() => _ColumnDemoState();
}

class _ColumnDemoState extends State<ColumnDemo> {
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
        width: double.infinity,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.end,
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
            Container(
                color: Colors.blue,
                child: const Text(
                  'Third Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                color: Colors.yellow,
                child: const Text(
                  'Fourth Text',
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

class ColumnExpanded extends StatefulWidget {
  const ColumnExpanded({Key? key}) : super(key: key);

  @override
  State<ColumnExpanded> createState() => _ColumnExpandedState();
}

class _ColumnExpandedState extends State<ColumnExpanded> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Column Demo'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: const Drawer(),
      body: Column(
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

