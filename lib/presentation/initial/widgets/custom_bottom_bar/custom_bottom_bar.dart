import 'package:flutter/material.dart';
import 'package:magic_hat/presentation/initial/widgets/custom_bottom_bar/pages_enum.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    required this.currentPage,
    required this.onChanged,
    super.key,
  });
  final PagesEnum currentPage;
  final void Function(PagesEnum newIndex) onChanged;

  @override
  Widget build(BuildContext context) {
    const height = 80.0;
    final bottomPadding = MediaQuery.paddingOf(context).bottom;
    return SizedBox(
      height: height + bottomPadding,
      child: Material(
        elevation: 56,
        child: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                PagesEnum.values.length,
                (index) {
                  final current = PagesEnum.values[index];
                  final data = _getData(current, current == currentPage);
                  return _BottomBarItem(
                    entity: data,
                    height: height,
                    onChanged: onChanged,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  _BottomBarEntity _getData(
    PagesEnum page,
    bool isActive,
  ) {
    switch (page) {
      case PagesEnum.home:
        return _BottomBarEntity(
          isActive: isActive,
          icon: Icons.home,
          label: 'Home',
          page: page,
        );
      case PagesEnum.list:
        return _BottomBarEntity(
          isActive: isActive,
          icon: Icons.list,
          label: 'List',
          page: page,
        );
    }
  }
}

class _BottomBarEntity {
  const _BottomBarEntity({
    required this.isActive,
    required this.icon,
    required this.label,
    required this.page,
  });
  final IconData icon;
  final String label;
  final bool isActive;
  final PagesEnum page;
}

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    required this.entity,
    required this.onChanged,
    required this.height,
  });
  final _BottomBarEntity entity;
  final void Function(PagesEnum newIndex) onChanged;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(entity.page);
      },
      borderRadius: BorderRadius.circular(height),
      child: Ink(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                entity.icon,
                color: entity.isActive ? Colors.black : Colors.grey,
                size: 26,
              ),
              const SizedBox(height: 3),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  entity.label,
                  style: TextStyle(
                    color: entity.isActive ? Colors.black : Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
