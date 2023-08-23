import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  final correctColor = const Color.fromARGB(255, 150, 198, 241);
  final inCorrectColor = const Color.fromARGB(233, 190, 142, 234);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor:
                            (data['user-answer'] != data['correct-answer'])
                                ? inCorrectColor
                                : correctColor,
                        child: Text(
                          ((data['question-index'] as int) + 1).toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(175, 0, 0, 0),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (data['question']) as String,
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            (data['user-answer']) as String,
                            style: GoogleFonts.lato(
                                color: inCorrectColor,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            (data['correct-answer']) as String,
                            style: GoogleFonts.lato(
                                color: correctColor,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    )
                  ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
