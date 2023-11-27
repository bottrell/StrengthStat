import 'package:flutter/material.dart';
import 'package:strength_stat/screens/create_account.dart';
import 'package:strength_stat/screens/exercises_screen.dart';
import 'package:strength_stat/screens/measure_screen.dart';
import 'package:strength_stat/screens/profile_screen.dart';
import 'package:strength_stat/screens/stats_screen.dart';
import 'package:strength_stat/screens/workout_overview_screen.dart';
import 'package:strength_stat/widgets/nav_bar.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);
  static const List<Widget> screens = [
    // Profile screen
    ProfileScreen(),
    // Exercises Screen
    ExercisesScreen(),
    // Workout Screen
    WorkoutOverviewScreen(),
    // Measure Screen
    MeasureScreen(),
    // Stats Screen
    StatsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return const CreateAccount();
  }
}
