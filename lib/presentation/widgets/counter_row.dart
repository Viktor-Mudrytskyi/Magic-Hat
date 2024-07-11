import 'package:flutter/widgets.dart';
import 'package:magic_hat/presentation/home_page/widgets/score_tile_widget.dart';

class CounterRow extends StatelessWidget {
  const CounterRow({
    required this.total,
    required this.success,
    required this.failed,
    super.key,
  });
  final int total;
  final int success;
  final int failed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ScoreTileWidget(
            title: 'Total',
            score: total,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: ScoreTileWidget(
            title: 'Success',
            score: success,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: ScoreTileWidget(
            title: 'Failed',
            score: failed,
          ),
        ),
      ],
    );
  }
}
