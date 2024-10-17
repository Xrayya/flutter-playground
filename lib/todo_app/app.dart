import 'package:flutter/material.dart';

import 'plan_screen.dart';

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlanScreen(),
    );
  }
}
