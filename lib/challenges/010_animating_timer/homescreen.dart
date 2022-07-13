import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/challenges/010_animating_timer/components/play_button.dart';
import 'package:main_app/challenges/010_animating_timer/components/skip_button.dart';
import 'package:main_app/challenges/010_animating_timer/models/data.dart';
import 'package:main_app/challenges/010_animating_timer/utils/utils.dart';

class Challenge010 extends StatelessWidget {
  Challenge010({Key? key}) : super(key: key);

  final timeText1Style =
      GoogleFonts.poppins(fontSize: 144, fontWeight: FontWeight.w700, height: 0.9, color: Color(0xFF4D2020));
  final timeText2Style =
      GoogleFonts.poppins(fontSize: 144, fontWeight: FontWeight.w300, height: 0.9, color: Color(0xFF4D2020));
  final statTextStyle = GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);

  int currentStage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: getColor(TimerStage.work)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              /////////////////////////////////////////
              // 상단 상태
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    color: Color(0xFF1F2937),
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: stages.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Center(
                                  child: Container(
                                    width: 46,
                                    height: 46,
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: currentStage == index
                                          ? getColor(stages[index])
                                          : getColor(stages[index]).withAlpha(70),
                                      borderRadius: BorderRadius.circular(10),
                                      border: currentStage == index
                                          ? Border.all(
                                              color: Colors.white,
                                              width: 1.0,
                                            )
                                          : null,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: IconButton(
                            icon: Icon(Icons.settings),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    color: Color(0xFF374151),
                    child: Center(
                      child: Text('Work', style: statTextStyle),
                    ),
                  )
                ],
              ),
              /////////////////////////////////////////
              // 경과 시간
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('24', style: timeText1Style),
                  Text('55', style: timeText2Style),
                ],
              ),
              /////////////////////////////////////////
              // 하단 제어 버튼들
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 200,
                    height: 120,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SkipButton(icon: Icons.skip_previous_outlined, position: 'L'),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SkipButton(icon: Icons.skip_next_outlined, position: 'R'),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: PlayButton(icon: Icons.play_arrow_rounded),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
