import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GenericErrorWidget extends StatelessWidget {
  const GenericErrorWidget({
    Key? key,
    required this.error,
    required this.message,
    required this.retryWidget,
  }) : super(key: key);

  final Object error;
  final String message;
  final Widget retryWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          SizedBox(height: Adaptive.h(3)),
          const Icon(Icons.error),
          SizedBox(height: Adaptive.h(3)),
          Text(error.toString()),
          SizedBox(height: Adaptive.h(3)),
          retryWidget,
          SizedBox(height: Adaptive.h(3)),
        ],
      ),
    );
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({
    Key? key,
    required this.error,
    required this.msg,
    this.stackTrace,
    required this.retryFunction,
  }) : super(key: key);

  final Object error;
  final StackTrace? stackTrace;
  final String msg;
  final VoidCallback retryFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        const Icon(Icons.error),
        const SizedBox(height: 20),
        Text(error.toString()),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: retryFunction,
          child: Container(
            alignment: Alignment.center,
            height: 20,
            child: const Text('Try Again?'),
          ),
        )
      ],
    );
  }
}
