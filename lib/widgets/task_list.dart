import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return GestureDetector(
              onLongPress: () {
                taskData.removeTask(taskItem);
              },
              child: TaskTile(
                  taskTitle: taskItem.name,
                  isChecked: taskItem.isDone,
                  checkBoxCallback: (bool checkBoxState) {
                    taskData.checkTask(taskItem);
                  }),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
