import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onPressed});
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // لون الخلفية
        // foregroundColor: Colors.white, // لون النص والأيقونات
        // elevation: 8, // الظل
        shadowColor: Colors.black54,
        minimumSize: const Size(double.infinity, 55), // العرض والارتفاع
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // تدوير الحواف
        ),
      ),
      child: Center(
        child: SizedBox(
          height: 31,
          width: double.infinity,
          child: Center(child: Text(label, style: TextStyle(fontSize: 19))),
        ),
      ),
    );
  }
}
