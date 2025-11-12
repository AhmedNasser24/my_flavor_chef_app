import 'dart:async';

import 'package:chef_app/core/languages/locale_keys.g.dart';
import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:chef_app/core/utils/themes/app_font_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({super.key, this.initialTime = "02:15"});
  final String initialTime;
  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  late Duration duration;
  Timer? timer;
  bool isRunning = false;

  @override
  void initState() {
    super.initState();
    duration = _parseDuration(widget.initialTime);
  }

  Duration _parseDuration(String timeString) {
    final parts = timeString.split(':');
    if (parts.length != 2) return const Duration(); // fallback
    final minutes = int.tryParse(parts[0]) ?? 0;
    final seconds = int.tryParse(parts[1]) ?? 0;
    return Duration(minutes: minutes, seconds: seconds);
  }

  void startTimer() {
    if (timer != null && timer!.isActive) return;
    setState(() => isRunning = true);

    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (duration.inSeconds <= 0) {
        timer?.cancel();
        setState(() => isRunning = false);
      } else {
        setState(() {
          duration = Duration(seconds: duration.inSeconds - 1);
        });
      }
    });
  }

  void stopTimer() {
    timer?.cancel();
    setState(() => isRunning = false);
  }

  void resetTimer() {
    timer?.cancel();
    setState(() {
      duration = _parseDuration(widget.initialTime);
      isRunning = false;
    });
  }

  String formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isRunning ? stopTimer : startTimer,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          LocaleKeys.timer.tr(args: [formatDuration(duration)]),
      
          style: AppFontStyle.medium12White,
        ),
      ),
    );
  }
}
