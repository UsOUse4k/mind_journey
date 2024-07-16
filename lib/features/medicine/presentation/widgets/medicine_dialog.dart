import 'package:flutter/material.dart';

enum MedicineDialogResult {
  accept,
  reschedule,
  skip,
}

class MedicineDialog extends StatelessWidget {
  const MedicineDialog({
    super.key,
    required this.medicineName,
    required this.time,
    required this.dose,
  });

  final String medicineName;
  final String time;
  final int dose;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  medicineName,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: 'Назначено ',
                    style: const TextStyle(fontSize: 16.0),
                    children: [
                      TextSpan(
                        text: 'сегодня на $time\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Принять $dose таблетки',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ],
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
              Navigator.of(context).pop(MedicineDialogResult.accept);
            },
            child: const SizedBox(
              height: 44,
              child: Center(
                child: Text(
                  'Принять',
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
              Navigator.of(context).pop(MedicineDialogResult.reschedule);
            },
            child: const SizedBox(
              height: 44,
              child: Center(
                child: Text(
                  'Перенести',
                  style: TextStyle(
                    color: Colors.blue,
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
              Navigator.of(context).pop(MedicineDialogResult.skip);
            },
            child: const SizedBox(
              height: 44,
              child: Center(
                child: Text(
                  'Пропустить',
                  style: TextStyle(
                    color: Colors.blue,
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
