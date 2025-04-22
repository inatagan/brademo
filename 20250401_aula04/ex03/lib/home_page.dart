import 'package:flutter/material.dart';

import './archive_page.dart';

// This screen only displays un-completed tasks
class HomePage extends StatelessWidget {
  // Using "static" so that we can easily access it from other screens
  static final ValueNotifier<List<Map<String, dynamic>>> tasksNotifier =
      ValueNotifier([]);

  const HomePage({Key? key}) : super(key: key);

  // This function will be triggered when the floating button is pressed
  // Add new task
  void _addNewTask() {
    final List<Map<String, dynamic>> tasks = [...tasksNotifier.value];
    tasks.add({
      "id": DateTime.now().toString(),
      "title": "Task ${DateTime.now()}",
      "isDone": false,
    });
    tasksNotifier.value = tasks;
  }

  // This function will be triggered when the checkbox next to a task is tapped
  // Finish a task
  // Change a task from "uncompleted" to "completed"
  void _finishTask(String updatedTaskId) {
    final List<Map<String, dynamic>> tasks = [...tasksNotifier.value];

    final int index = tasks.indexWhere((task) => task['id'] == updatedTaskId);
    tasks[index]['isDone'] = true;

    tasksNotifier.value = tasks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ULTIMATE TASK APP')),
      body: ValueListenableBuilder<List<Map<String, dynamic>>>(
        valueListenable: HomePage.tasksNotifier,
        builder: (_, tasks, __) {
          final uncompletedTasks =
              tasks.where((task) => task['isDone'] == false).toList();

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ArchivePage(),
                      ),
                    );
                  },
                  child: const Text('View Completed Tasks'),
                ),
                const SizedBox(height: 20),
                Text(
                  'You have ${uncompletedTasks.length} uncompleted tasks',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: uncompletedTasks.length,
                    itemBuilder:
                        (_, index) => Card(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          elevation: 5,
                          color: Colors.amberAccent,
                          child: ListTile(
                            title: Text(uncompletedTasks[index]['title']),
                            trailing: IconButton(
                              icon: const Icon(Icons.check_box_outline_blank),
                              onPressed:
                                  () => _finishTask(
                                    uncompletedTasks[index]['id'],
                                  ),
                            ),
                          ),
                        ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
