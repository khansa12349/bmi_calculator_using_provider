import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calculations.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<Calculations>((context), listen: true);
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: <Widget>[
              TextField(
                controller: state.heightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Height in cm',
                  icon: Icon(Icons.trending_up),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: state.weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Weight in kg',
                  icon: Icon(Icons.line_weight),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: state.genderController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Enter your gender',
                  icon: Icon(Icons.people_alt_outlined),
                ),
              ),
              const SizedBox(height: 100),
              TextButton(
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        backgroundColor: Colors.pink),
                  ),
                  onPressed: () {
                    state.calculations();
                  }),
              const SizedBox(height: 15),
              Text(
                state.result == null ? "Enter Value" : "${state.result}",
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              state.result < 18.5
                  ? const Text("You are underweighted")
                  : state.result > 18.5 && state.result < 24.9
                      ? const Text("BMI is normal")
                      : const Text("You are overweighted"),
            ],
          ),
        ));
  }
}
