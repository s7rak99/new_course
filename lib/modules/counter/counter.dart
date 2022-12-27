
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course/modules/counter/cubit/cubit.dart';
import 'package:new_course/modules/counter/cubit/states.dart';

class CounterScreen2 extends StatelessWidget {
  const CounterScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit , CounterStates>(
          listener: (context , state){

            if(state is CounterPlusState){
              //print('plus ${state.counter}');

            }
            if(state is CounterMinusState){
              //print('Minus ${state.counter}');
            }

          },
        builder: (context , state){
            return Scaffold(
              appBar: AppBar(title: const Text('Counter'),),
              body: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        CounterCubit.get(context).minus();
                      },
                      child: const Text(
                        'Minus',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text('${CounterCubit.get(context).counter}',
                        style:
                        const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {
                        CounterCubit.get(context).plus();
                      },
                      child: const Text('Plus', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ),
            );
        },


      ),
    );
  }
}



class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  static int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {

                counter--;

              },
              child: const Text(
                'Minus',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text('$counter',
                style:
                const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {

                counter++;

              },
              child: const Text('Plus', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
