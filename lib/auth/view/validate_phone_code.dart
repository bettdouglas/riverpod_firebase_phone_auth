import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ValidatePhoneCode extends StatelessWidget {
  ValidatePhoneCode({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function(String) onTap;
  final ted = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Please enter the code sent to your device below',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Adaptive.h(5)),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: TextField(
            controller: ted,
            autofocus: true,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: Adaptive.h(3)),
        ElevatedButton.icon(
          onPressed: () => onTap(ted.text),
          icon: const Icon(Icons.check),
          label: const Text('Validate'),
        ),
      ],
    );
  }
}
