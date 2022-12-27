import 'package:flutter/material.dart';

class ScrollDemo extends StatefulWidget {
  const ScrollDemo({Key? key}) : super(key: key);

  @override
  State<ScrollDemo> createState() => _ScrollDemoState();
}

class _ScrollDemoState extends State<ScrollDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo'),),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 100.0,
                color: Colors.red,
                child: const Text(
                  'First Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.green,
                child: const Text(
                  'Second Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.blue,
                child: const Text(
                  'Third Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.yellow,
                child: const Text(
                  'Fourth Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.red,
                child: const Text(
                  'First Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.green,
                child: const Text(
                  'Second Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.blue,
                child: const Text(
                  'Third Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
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



class Scroll2Demo extends StatefulWidget {
  const Scroll2Demo({Key? key}) : super(key: key);

  @override
  State<Scroll2Demo> createState() => _Scroll2DemoState();
}

class _Scroll2DemoState extends State<Scroll2Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo'),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 100.0,
                color: Colors.red,
                child: const Text(
                  'First Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.green,
                child: const Text(
                  'Second Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.blue,
                child: const Text(
                  'Third Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.yellow,
                child: const Text(
                  'Fourth Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.red,
                child: const Text(
                  'First Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.green,
                child: const Text(
                  'Second Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
                color: Colors.blue,
                child: const Text(
                  'Third Text',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )),
            Container(
                height: 100.0,
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
