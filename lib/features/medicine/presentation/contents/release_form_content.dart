import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_mind/features/common/presentation/widgets/common_outlined_button.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/create_medicine/create_medicine_bloc.dart';

class ReleaseFormContent extends StatelessWidget {
  const ReleaseFormContent({
    super.key,
    this.onNextTap,
  });

  final VoidCallback? onNextTap;

  @override
  Widget build(BuildContext context) {
    final List<String> buttonTexts = [
      "Таблетка",
      "Инъекция",
      "Раствор (Жидкость)",
      "Капли",
      "Ингалятор",
      "Порошок",
      "Другое",
    ];

    return ListView.separated(
      shrinkWrap: true,
      itemCount: buttonTexts.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) => CommonOutlinedButton(
        text: buttonTexts[index],
        onTap: () {
          context.read<CreateMedicineBloc>().add(
                const CreateMedicineEvent.releaseFormChanged(
                  MedicineReleaseForm.pill,
                ),
              );
          onNextTap?.call();
        },
      ),
    );
  }
}
