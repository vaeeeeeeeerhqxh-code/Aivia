import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:opennutritracker/features/home/presentation/widgets/macro_nutriments_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:opennutritracker/generated/l10n.dart';

class DashboardWidget extends StatefulWidget {
  final double totalKcalDaily;
  final double totalKcalLeft;
  final double totalKcalSupplied;
  final double totalKcalBurned;
  final double totalCarbsIntake;
  final double totalFatsIntake;
  final double totalProteinsIntake;
  final double totalCarbsGoal;
  final double totalFatsGoal;
  final double totalProteinsGoal;

  const DashboardWidget(
      {super.key,
      required this.totalKcalSupplied,
      required this.totalKcalBurned,
      required this.totalKcalDaily,
      required this.totalKcalLeft,
      required this.totalCarbsIntake,
      required this.totalFatsIntake,
      required this.totalProteinsIntake,
      required this.totalCarbsGoal,
      required this.totalFatsGoal,
      required this.totalProteinsGoal});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    double kcalLeftLabel = 0;
    double gaugeValue = 0;

    if (widget.totalKcalLeft > widget.totalKcalDaily) {
      kcalLeftLabel = widget.totalKcalDaily;
      gaugeValue = 0;
    } else if (widget.totalKcalLeft < 0) {
      kcalLeftLabel = 0;
      gaugeValue = 1;
    } else {
      kcalLeftLabel = widget.totalKcalLeft;
      gaugeValue = (widget.totalKcalDaily - widget.totalKcalLeft) /
          widget.totalKcalDaily;
    }

    return Container(
      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.restaurant,
                      size: 28, color: Colors.green.shade400),
                  const SizedBox(height: 6),
                  Text(
                    '${widget.totalKcalSupplied.toInt()}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87),
                  ),
                  Text(
                    S.of(context).suppliedLabel,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.6)),
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 85,
                lineWidth: 16,
                animation: true,
                percent: gaugeValue,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.green,
                backgroundColor: Colors.green.withOpacity(0.2),
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedFlipCounter(
                      value: kcalLeftLabel.toInt(),
                      duration: const Duration(milliseconds: 800),
                      textStyle: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      S.of(context).kcalLeftLabel,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.6)),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.local_fire_department,
                      size: 28, color: Colors.orange.shade400),
                  const SizedBox(height: 6),
                  Text(
                    '${widget.totalKcalBurned.toInt()}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87),
                  ),
                  Text(
                    S.of(context).burnedLabel,
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.6)),
                  )
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),
          MacroNutrientsView(
            totalCarbsIntake: widget.totalCarbsIntake,
            totalFatsIntake: widget.totalFatsIntake,
            totalProteinsIntake: widget.totalProteinsIntake,
            totalCarbsGoal: widget.totalCarbsGoal,
            totalFatsGoal: widget.totalFatsGoal,
            totalProteinsGoal: widget.totalProteinsGoal,
          ),
        ],
      ),
    );
  }

}
