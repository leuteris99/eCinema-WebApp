import 'package:cinema_app/components/checkout.dart';
import 'package:cinema_app/components/main_scaffold.dart';
import 'package:cinema_app/components/movie_selector.dart';
import 'package:cinema_app/components/theater_selector.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      const Step(
        title: Text('Movie'),
        content: MovieSelector(),
      ),
      const Step(
        title: Text('Theater'),
        content: TheaterSelector(),
      ),
      const Step(
        title: Text("Time"),
        content: Text("Content for Step 3"),
      ),
      const Step(
        title: Text("Seats"),
        content: Text("Content for Step 4"),
      ),
      const Step(
        title: Text("Checkout"),
        content: Checkout(),
      ),
    ];
    return MainScaffold(
      title: "Book Tickets",
      body: Center(
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (_index <= steps.length - 2) {
              setState(() {
                _index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: steps,
        ),
      ),
    );
  }
}
