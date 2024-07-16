import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_mind/features/common/presentation/utils/in_development_dialog.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/bloc/consume_medicine_bloc.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/get_medicines/medicines_bloc.dart';
import 'package:medi_mind/features/medicine/presentation/widgets/medicine_card.dart';
import 'package:medi_mind/features/medicine/presentation/widgets/medicine_dialog.dart';

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
                            name: medicine.name.getValue(),
                            dose: medicine.dose,
                            time: medicine.time,
                            isConsumed: medicine.isConsumed,
                            onTap: () {
                              if (!medicine.isConsumed) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return MedicineDialog(
                                      medicineName: medicine.name.getValue(),
                                      time: medicine.formattedTime,
                                      dose: medicine.dose,
                                    );
                                  },
                                ).then(
                                  (value) {
                                    switch (value as MedicineDialogResult) {
                                      case MedicineDialogResult.accept:
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
