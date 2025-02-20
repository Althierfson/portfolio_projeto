import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProgressBar extends StatelessWidget {
  final double percentage;
  final Color filledColor;
  final Color backgroundColor;

  const CustomProgressBar({
    super.key,
    required this.percentage,
    this.filledColor = Colors.blue,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    double progressValue = (percentage.clamp(0, 100)) / 100; 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "${percentage.toInt()}%", 
          style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 5),
        ClipRRect(
          borderRadius: BorderRadius.circular(8), 
          child: LinearProgressIndicator(
            value: progressValue,
            minHeight: 10,
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color>(filledColor),
          ),
        ),
      ],
    );
  }
}
