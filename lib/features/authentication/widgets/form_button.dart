import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  const FormButton({
    super.key,
    required this.disabled,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: Sizes.size14),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:
              disabled ? Colors.grey.shade400 : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: const Text(
            "Next",
          ),
        ),
      ),
    );
  }
}
