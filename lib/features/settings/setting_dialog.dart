import 'package:flutter/material.dart';

enum SettingsResult {
  exit,
  cancel,
}

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Выход",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Вы уверены что хотите выйти\nиз приложения?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 0,
            thickness: 0.5,
            color: const Color(0xFF3C3C43).withOpacity(0.36),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop(SettingsResult.exit);
            },
            child: const SizedBox(
              height: 44,
              child: Center(
                child: Text(
                  'Выход',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 0.5,
            color: const Color(0xFF3C3C43).withOpacity(0.36),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop(SettingsResult.cancel);
            },
            child: const SizedBox(
              height: 44,
              child: Center(
                child: Text(
                  'Отмена',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
