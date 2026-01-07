import 'package:belajar_bloc/bangundatarstate.dart';
import 'package:flutter/material.dart';

class BangunDatarController {
  final panjangController = TextEditingController();
  final lebarController = TextEditingController();

  final ValueNotifier<BangunDatarState> state =
      ValueNotifier(BangunDatarState());

  void hitungLuas() {
    double p = double.tryParse(panjangController.text) ?? 0;
    double l = double.tryParse(lebarController.text) ?? 0;

    state.value = BangunDatarState(
      hasil: "Luas = ${p * l}",
    );
  }

  void hitungKeliling() {
    double p = double.tryParse(panjangController.text) ?? 0;
    double l = double.tryParse(lebarController.text) ?? 0;

    state.value = BangunDatarState(
      hasil: "Keliling = ${2 * (p + l)}",
    );
  }

  void reset() {
    panjangController.clear();
    lebarController.clear();
    state.value = BangunDatarState();
  }
}
