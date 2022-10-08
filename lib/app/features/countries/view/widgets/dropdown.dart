import 'package:best_practice_template/app/features/countries/domain/models/country/country.dart';
import 'package:best_practice_template/theme/app_dimen.dart';
import 'package:best_practice_template/theme/text_styles.dart';
import 'package:flutter/material.dart';

class DropDownList<T> extends StatelessWidget {
  const DropDownList({
    Key? key,
    required this.options,
    required this.formatValue,
    required this.onSelect,
    required this.initialValue,
    required this.title,
  }) : super(key: key);

  final T? initialValue;
  final List<T> options;
  final String Function(T value) formatValue;
  final void Function(T value) onSelect;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyles.bold18,
        ),
        SizedBox(
          height: AppDimen.h8,
        ),
        DecoratedBox(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(AppDimen.r12),
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: Padding(
              padding: AppDimen.edgeh8v4,
              child: DropdownButton<T>(
                alignment: Alignment.bottomCenter,
                value: initialValue,
                isExpanded: true,
                menuMaxHeight: 300,
                items: options.map((T value) {
                  return DropdownMenuItem<T>(
                    value: value,
                    child: Text(
                      formatValue(value),
                      style: TextStyles.normal14,
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value == null) return;
                  onSelect(value);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
