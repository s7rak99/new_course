import 'package:flutter/material.dart';
import 'package:new_course/shared/cubit/cubit.dart';

Widget defaultButton(
        {double width = double.infinity,
        bool isUpperCase = true,
        Color background = Colors.blue,
        required VoidCallback onPressed,
        String text = 'press'}) =>
    MaterialButton(
      onPressed: onPressed,
      color: background,
      minWidth: width,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: const TextStyle(color: Colors.white, fontSize: 25.0),
      ),
    );

Widget defaultFormField(
    {required TextEditingController controller,
    TextInputType? type,
    VoidCallback? onPressed,
    String? Function(String?)? onChange,
    VoidCallback? onTab,
    String? Function(String?)? validator,
    required String label,
    bool isPassword = false,
    bool isClickable = true,
    required IconData prefixIcon,
    IconData? suffixIcon,
    VoidCallback? suffixPressed}) {
  return TextFormField(
    onTap: onTab,
    controller: controller,
    validator: validator,
    onFieldSubmitted: (val) {
      print(val);
    },
    onChanged: onChange,
    enabled: isClickable,
    keyboardType: TextInputType.visiblePassword,
    obscureText: isPassword == true ? true : false,
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: suffixIcon != null
          ? IconButton(
              icon: Icon(suffixIcon),
              onPressed: suffixPressed,
            )
          : null,
      border: const OutlineInputBorder(),
    ),
  );
}

Widget buildTaskItem(Map model, context , String status) {
  return Dismissible(
    key: Key(model['id'].toString()),
    onDismissed: (direction) {
      AppCubit.get(context).deleteData(id: model['id']);
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            child: Text('${model['time']}'),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${model['title']}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${model['date']}',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Visibility(
            visible: status == 'done' ? false : true ,
            child: IconButton(
                onPressed: () {
                  AppCubit.get(context)
                      .updateData(status: 'done', id: model['id']);
                },
                icon: const Icon(
                  Icons.check_box_outlined,
                  color: Colors.green,
                )),
          ),
          Visibility(
            visible: status== 'archive' ?false :true,
            child: IconButton(
                onPressed: () {
                  AppCubit.get(context)
                      .updateData(status: 'archive', id: model['id']);
                },
                icon: const Icon(
                  Icons.archive_outlined,
                  color: Colors.grey,
                )),
          )
        ],
      ),
    ),
  );
}

Widget tasksList({required List<Map> tasks}) {
  return tasks.isNotEmpty
      ? ListView.separated(
          itemBuilder: (context, i) {
            return buildTaskItem(tasks[i], context , tasks[i]['status']);
          },
          separatorBuilder: (context, i) {
            return Container(
              width: double.infinity,
              color: Colors.grey[300],
              height: 1.0,
            );
          },
          itemCount: tasks.length)
      : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.note_alt_outlined,
                size: 50,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Here we GO to add some notes !!',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              )
            ],
          ),
        );
}
