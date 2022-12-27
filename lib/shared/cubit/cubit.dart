import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:new_course/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/tasks/archive_task.dart';
import '../../modules/tasks/done_task.dart';
import '../../modules/tasks/new_task.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  late Database database;

  List<Widget> screens = [
    const NewTaskScreen(),
    const DoneTaskScreen(),
    const ArchivedTaskScreen()
  ];

  List<String> title = ['New Tasks', 'Done Tasks', 'Archive Tasks'];

  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archiveTasks = [];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

  void createDatabase() {
    openDatabase('todo.db', version: 1, onCreate: (database, version) {
      print('database created');

      database
          .execute(
              'CREATE TABLE Tasks (id INTEGER PRIMARY KEY , title TEXT , date TEXT , time TEXT , status TEXT)')
          .then((value) {
        print('table created');
      }).catchError((err) {
        print('err when creating table ${err}');
      });
    }, onOpen: (database) {
      getDataFromDatabase(database);
      print('database opened');
    }).then((value) {
      database = value;

      emit(AppCreateDatabaseState());
    });
  }

  insertToDatabase({
    required String title,
    required String time,
    required String date,
  }) async {
    await database.transaction((txn) async {
      await txn
          .rawInsert(
              'INSERT INTO Tasks(title,date , time ,status) VALUES ("$title" , "$date" , "$time" , "new" )')
          .then((value) {
        print("succefully");
        emit(AppInsertDatabaseState());
        getDataFromDatabase(database);
      }).catchError((err) {
        print('err insert table ${err.toString()}');
      });
      // return null;
    });
  }

  void getDataFromDatabase(database) {

    newTasks = [];
    doneTasks = [];
    archiveTasks = [];
    emit(AppGetDatabaseLoadingState());
    database.rawQuery('SELECT * FROM Tasks').then((value) {
      // tasks = value;
      // print(tasks);
      value.forEach((element) {
        if (element['status'] == 'new') {
          newTasks.add(element);
        } else if (element['status'] == 'done') {
          doneTasks.add(element);
        } else {
          archiveTasks.add(element);
        }
      });
      emit(AppGetDatabaseState());
    });
  }

  void updateData({required String status, required int id}) async {
    database.rawUpdate(
        'UPDATE Tasks SET status = ? WHERE id = ?', [status, id]).then((value) {
      getDataFromDatabase(database);
      emit(AppUpdateDatabaseState());
    });
  }


  void deleteData({ required int id}) async {
    database.rawDelete(
        'DELETE FROM Tasks  WHERE id = ? ',[id]).then((value) {
      getDataFromDatabase(database);
      emit(AppDeleteDatabaseState());
    });
  }


  bool isBottomSheetShown = false;

  IconData iconData = Icons.edit;

  void changBottomSheetState({required bool isShow, required IconData icons}) {
    isBottomSheetShown = isShow;
    iconData = icons;
    emit(AppChangeBottomSheetState());
  }
}
