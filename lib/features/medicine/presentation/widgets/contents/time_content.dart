import 'package:flutter/cupertino.dart'
    show CupertinoDatePicker, CupertinoDatePickerMode;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_mind/features/common/presentation/widgets/common_filled_button.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/create_medicine/create_medicine_bloc.dart';
import 'package:medi_mind/features/medicine/presentation/widgets/dose_field.dart';

class TimeContent extends StatefulWidget {
  const TimeContent({super.key, this.onNextTap});

  final VoidCallback? onNextTap;

  @override
  State<TimeContent> createState() => _TimeContentState();
}

class _TimeContentState extends State<TimeContent> {
  @override
  void initState() {
    super.initState();

    context
        .read<CreateMedicineBloc>()
        .add(CreateMedicineEvent.timeChanged(DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateMedicineBloc, CreateMedicineState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: DoseField(
                onChanged: (value) {
                  try {
                    context
                        .read<CreateMedicineBloc>()
                        .add(CreateMedicineEvent.doseChanged(int.parse(value)));
                  } catch (_) {}
                },
              ),
            ),
            const SizedBox(height: 41),
            Container(
              height: 213.5,
              constraints: const BoxConstraints(maxWidth: 200),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                backgroundColor: const Color(0xFFF1F4FF),
                onDateTimeChanged: (value) {
                  context
                      .read<CreateMedicineBloc>()
                      .add(CreateMedicineEvent.timeChanged(value));
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonFilledButton(
                isEnabled: state.time != null && state.dose != null,
                text: state.isSubmitting ? "Загрузка" : "Продолжить",
                onTap: () {
                  context
                      .read<CreateMedicineBloc>()
                      .add(const CreateMedicineEvent.createMedicinePressed());
                },
              ),
            ),
            const SizedBox(height: 81),
          ],
        );
      },
    );
  }
}
