import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/google-icon.png', width: 24, height: 24.0),
            const SizedBox(width: 12.0),
            const Text("Sign in with Google"),
          ],
        ),
      ),
    );
  }
}
