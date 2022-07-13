import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Challenge008 extends StatelessWidget {
  final List<int> _colors = [0xFF255ED6, 0xFF35364F, 0xFFE6EFF9, 0xFFE85050, 0xffFC9D45, 0xff573353];

  Challenge008({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Check'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(
            _colors.length,
                (index) => Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(_colors[index]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('#$index'),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[400],
                      ),
                      child: Text(
                        '0x${_colors[index].toRadixString(16).toUpperCase()}',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
