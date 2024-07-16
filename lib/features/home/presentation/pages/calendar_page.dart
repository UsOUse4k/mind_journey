import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:medi_mind/core/router/routes.dart';
import 'package:medi_mind/features/common/presentation/utils/in_development_dialog.dart';
import 'package:medi_mind/features/common/presentation/widgets/common_filled_button.dart';
import 'package:medi_mind/features/home/presentation/widgets/calendar_card.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/get_medicines/medicines_bloc.dart';
import 'package:medi_mind/features/medicine/presentation/widgets/medicine_list.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dateList = generateDateList();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Gap(36.5),
              const Text(
                "Календарь",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(36.5),
              GestureDetector(
                onTap: () {
                  showInDevelopmentDialog(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    dateList.length,
                    (index) {
                      final isSelected = index == 0;

                      final date = dateList[index];
                      final day = date["day"] as int;
                      final dayOfTheWeek = date["day_of_the_week"] as String;

                      return CalendarCard(
                        isSelected: isSelected,
                        day: day.toString(),
                        dayOfTheWeek: dayOfTheWeek.toUpperCase(),
                      );
                    },
                  ),
                ),
              ),
              const Gap(40),
              const Expanded(
                child: MedicinesList(),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CommonFilledButton(
                  text: "Добавить лекарство",
                  onTap: () async {
                    const AddMedicineRoute().push(context).then(
                      (medicine) {
                        if (medicine != null) {
                          context.read<MedicinesBloc>().add(
                                MedicinesEvent.addNewMedicine(
                                  medicine as Medicine,
                                ),
                              );
                        }
                      },
                    );
                  },
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> generateDateList() {
  final DateTime today = DateTime.now();
  final List<Map<String, dynamic>> dateList = [];

  final Map<int, String> weekdayDict = {
    1: "Пн",
    2: "Вт",
    3: "Ср",
    4: "Чт",
    5: "Пт",
    6: "Сб",
    7: "Вс",
  };

  for (int i = 0; i < 7; i++) {
    final DateTime currentDate = today.add(Duration(days: i));
    final int day = currentDate.day;
    final String weekday = weekdayDict[currentDate.weekday] ?? '';

    dateList.add({
      "day": day,
      "day_of_the_week": weekday,
    });
  }

  return dateList;
}
