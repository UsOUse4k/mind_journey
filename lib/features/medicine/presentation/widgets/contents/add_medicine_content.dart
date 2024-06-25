import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_mind/features/common/presentation/widgets/common_filled_button.dart';
import 'package:medi_mind/features/common/presentation/widgets/common_text_field.dart';
import 'package:medi_mind/features/medicine/presentation/blocs/create_medicine/create_medicine_bloc.dart';

class AddMedicineContent extends StatelessWidget {
  const AddMedicineContent({
    super.key,
    this.onNextTap,
  });

  final VoidCallback? onNextTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateMedicineBloc, CreateMedicineState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: CommonTextField(
                hintText: "Название лекарства",
                onChanged: (value) {
                  context
                      .read<CreateMedicineBloc>()
                      .add(CreateMedicineEvent.nameChanged(value));
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonFilledButton(
                isEnabled: state.name.isValid(),
                text: "Продолжить",
                onTap: () {
                  onNextTap?.call();
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
