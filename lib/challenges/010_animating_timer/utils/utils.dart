import 'package:flutter/material.dart';
import 'package:main_app/challenges/010_animating_timer/models/data.dart';

Color getColor(TimerStage stage) {
  switch (stage) {
    case TimerStage.work:
      return Color(0xFFFF6B6B);
    case TimerStage.rest:
      return Color(0xFFF4A261);
    case TimerStage.longRest:
      return Color(0xFF2EC4B6);
  }
}
