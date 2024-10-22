import 'package:flutter/material.dart';
import 'package:hello_world/todo_app/data_layer.dart';
import 'package:hello_world/todo_app/plan_provider.dart';

import 'plan_screen.dart';

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlanProvider(
        notifier: ValueNotifier<Plan>(const Plan()),
        child: const PlanScreen(),
      ),
    );
  }
}
