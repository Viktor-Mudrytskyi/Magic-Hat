import 'package:flutter/material.dart';

class ScoreTileWidget extends StatelessWidget {
  const ScoreTileWidget({required this.title, required this.score, super.key});
  final String title;
  final int score;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constr) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          width: constr.maxWidth,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            color: Colors.grey.shade200,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                score.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }
}
