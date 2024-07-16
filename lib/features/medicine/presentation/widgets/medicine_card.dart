import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medi_mind/gen/assets.gen.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    super.key,
    this.isConsumed,
    required this.name,
    required this.dose,
    required this.time,
    this.onTap,
  });

  final bool? isConsumed;
  final String name;
  final int dose;
  final DateTime time;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF6C63FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 28,
              ),
              child: Image.asset(
                Assets.images.pills.path,
                width: 55,
                height: 55,
              ),
            ),
            Container(
              width: 1,
              height: 112,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                top: 9,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Принять $dose пилюль",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBBBBBB),
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (isConsumed ?? false)
                    Text(
                      "Принято сегодня в ${DateFormat('HH.mm').format(time)}",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4EF500),
                      ),
                    )
                  else
                    const Text(
                      "Еще не принято",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
