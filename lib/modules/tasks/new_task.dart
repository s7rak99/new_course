import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_course/shared/component/component.dart';
import 'package:new_course/shared/cubit/cubit.dart';
import 'package:new_course/shared/cubit/states.dart';

class NewTaskScreen extends StatelessWidget {
  // final List<Map>? tasks ;
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, states) {},
        builder: (context, states) {
          var tasks = AppCubit.get(context).newTasks;
          return tasksList(tasks: tasks);
        });
  }
}
