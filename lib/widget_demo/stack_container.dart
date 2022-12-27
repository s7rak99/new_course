import 'package:flutter/material.dart';

class StackConDemo extends StatefulWidget {
  const StackConDemo({Key? key}) : super(key: key);

  @override
  State<StackConDemo> createState() => _StackConDemoState();
}

class _StackConDemoState extends State<StackConDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),

            ),
            child: Stack(

              alignment: Alignment.bottomCenter,
              children:  [
                const Image(image: NetworkImage('https://avatars.mds.yandex.net/i?id=84dbd50839c3d640ebfc0de20994c30d-4473719-images-taas-consumers&n=27&h=480&w=480') ,width: double.infinity,fit: BoxFit.cover,),
                //const Icon(Icons.clear,size: 60.0,),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.4),
                  child: const Text('Island',textAlign: TextAlign.center , style: TextStyle(fontSize: 30.0 , color: Colors.white),),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
