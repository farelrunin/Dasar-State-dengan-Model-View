import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();  // Variable untuk menyimpan data plan
  late ScrollController scrollController;  // Langkah 10: Tambahkan ScrollController

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {  // Langkah 11: Tambahkan Scroll Listener
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farel Indra Syahputra')),
      body: _buildList(),
      floatingActionButton: _buildAddTaskButton(),  // Memanggil _buildAddTaskButton
    );
  }

  Widget _buildAddTaskButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)..add(const Task()),
          );
        });
      },
    );
  }

  // Langkah 8: Buat widget _buildList
  Widget _buildList() {
    return ListView.builder(
      controller: scrollController,  // Langkah 12: Tambahkan controller pada ListView
      itemCount: plan.tasks.length,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,  // Keyboard behavior
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index),
    );
  }

  Widget _buildTaskTile(Task task, int index) {
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
          });
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          });
        },
      ),
    );
  }

  @override
  void dispose() {  // Langkah 13: Dispose ScrollController
    scrollController.dispose();
    super.dispose();
  }
}


