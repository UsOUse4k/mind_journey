import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_mind/core/di/injection.dart';
import 'package:medi_mind/core/router/routes.dart';
import 'package:medi_mind/features/common/presentation/utils/in_development_dialog.dart';
import 'package:medi_mind/features/common/presentation/widgets/common_filled_button.dart';
import 'package:medi_mind/features/home/presentation/widgets/calendar_card.dart';
import 'package:medi_mind/features/home/presentation/widgets/medicine_card.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/bloc/consume_medicine_bloc.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/get_medicines/medicines_bloc.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<MedicinesBloc>()
              ..add(const MedicinesEvent.getMedicines()),
          ),
          BlocProvider(
            create: (context) => getIt<ConsumeMedicineBloc>(),
          ),
        ],
        child: const _CalendarBody(),
      ),
    );
  }
}

class _CalendarBody extends StatelessWidget {
  const _CalendarBody();

  @override
  Widget build(BuildContext context) {
    final dateList = generateDateList();

    return SafeArea(
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
            Row(
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
    );
  }
}

class MedicinesList extends StatelessWidget {
  const MedicinesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConsumeMedicineBloc, ConsumeMedicineState>(
      listener: (context, state) {
        state.maybeMap(
          loadSuccess: (state) {
            context
                .read<MedicinesBloc>()
                .add(MedicinesEvent.updateMedicine(state.medicine));
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return BlocBuilder<MedicinesBloc, MedicinesState>(
          builder: (context, state) {
            return state.maybeMap(
              loadSuccess: (state) {
                final medicines = state.medicines;

                return ListView.builder(
                  itemCount: medicines.length,
                  itemBuilder: (context, index) {
                    final medicine = medicines[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              medicine.formattedTime,
                              style: GoogleFonts.darkerGrotesque(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          MedicineCard(
                            name: medicine.name.getOrCrash(),
                            dose: medicine.dose,
                            time: medicine.time,
                            isConsumed: medicine.isConsumed,
                            onTap: () {
                              if (!medicine.isConsumed) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return CustomDialog(
                                      medicineName: medicine.name.getOrCrash(),
                                      time: medicine.formattedTime,
                                      dose: medicine.dose,
                                    );
                                  },
                                ).then(
                                  (value) {
                                    switch (value as CustomDialogResult) {
                                      case CustomDialogResult.accept:
                                        context.read<ConsumeMedicineBloc>().add(
                                              ConsumeMedicineEvent.consume(
                                                medicine.id,
                                              ),
                                            );

                                        context.read<MedicinesBloc>().add(
                                              MedicinesEvent.updateMedicine(
                                                medicine.copyWith(
                                                  isConsumed: true,
                                                ),
                                              ),
                                            );
                                      default:
                                        showInDevelopmentDialog(context);
                                    }
                                  },
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        );
      },
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

enum CustomDialogResult {
  accept,
  reschedule,
  skip,
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({
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
              context.pop(CustomDialogResult.accept);
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
              context.pop(CustomDialogResult.reschedule);
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
              context.pop(CustomDialogResult.skip);
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
