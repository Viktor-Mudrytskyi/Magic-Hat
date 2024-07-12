import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/home_page/dtos/house_dto.dart';

class AffiliationTileWidget extends StatelessWidget {
  const AffiliationTileWidget({
    required this.house,
    required this.onPressed,
    super.key,
  });
  final HouseDto house;
  final void Function(HouseDto val) onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed(house);
      },
      child: LayoutBuilder(
        builder: (context, constr) {
          return Ink(
            height: 90,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (house.assetPath.isNotEmpty)
                  Image.asset(
                    house.assetPath,
                    height: 50,
                    width: 50,
                  ),
                if (house.assetPath.isNotEmpty) const SizedBox(height: 6),
                Text(
                  house.displayName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
