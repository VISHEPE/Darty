import 'dart:io';

void main() {
  // List to store tasks
  var tasks = <String>[];

  // File to store tasks
  var file = File('tasks.txt');

  // Loading tasks from the file if it exists
  if (file.existsSync()) {
    tasks = file.readAsLinesSync();
  }

  while (true) {
    print("\n--- To-Do App ---");
    print("1. View tasks");
    print("2. Add a new task");
    print("3. Mark a task as done");
    print("4. Remove a task");
    print("5. Exit");
    stdout.write("Choose an option: ");
    String? input = stdin.readLineSync();

    if (input == "1") {
      // View tasks
      if (tasks.isEmpty) {
        print("\nNo tasks yet!");
      } else {
        print("\nYour tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } else if (input == "2") {
      // Add a new task
      stdout.write("\nEnter the new task: ");
      String? newTask = stdin.readLineSync();
      if (newTask != null && newTask.isNotEmpty) {
        tasks.add(newTask);
        print("Task added!");
      } else {
        print("Task cannot be empty.");
      }
    } else if (input == "3") {
      // Mark a task as done
      if (tasks.isEmpty) {
        print("\nNo tasks to mark as done.");
      } else {
        stdout.write("\nEnter the task number to mark as done: ");
        String? taskNumberInput = stdin.readLineSync();
        int? taskNumber = int.tryParse(taskNumberInput ?? "");
        if (taskNumber != null && taskNumber > 0 && taskNumber <= tasks.length) {
          tasks[taskNumber - 1] += " (done)";
          print("Task marked as done!");
        } else {
          print("Invalid task number.");
        }
      }
    } else if (input == "4") {
      // Remove a task
      if (tasks.isEmpty) {
        print("\nNo tasks to remove.");
      } else {
        stdout.write("\nEnter the task number to remove: ");
        String? taskNumberInput = stdin.readLineSync();
        int? taskNumber = int.tryParse(taskNumberInput ?? "");
        if (taskNumber != null && taskNumber > 0 && taskNumber <= tasks.length) {
          tasks.removeAt(taskNumber - 1);
          print("Task removed!");
        } else {
          print("Invalid task number.");
        }
      }
    } else if (input == "5") {
      // Save tasks to the file before exiting
      file.writeAsStringSync(tasks.join('\n'));
      print("\nTasks saved. Goodbye!");
      break;
    } else {
      print("\nInvalid option. Please try again.");
    }
  }
}
