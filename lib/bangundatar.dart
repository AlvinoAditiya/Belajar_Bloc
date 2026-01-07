import 'package:belajar_bloc/bangundatarcontroller.dart';
import 'package:flutter/material.dart';

class Bangundatar extends StatelessWidget {
  Bangundatar({super.key});

  final BangunDatarController controller = BangunDatarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hitung Persegi Panjang"),),
      body: Container(margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: TextField(
                      controller: controller.lebarController,
                      decoration: InputDecoration(
                        hintText: "input panjang",
                        border: OutlineInputBorder(),
                      ),
                  ),)
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: TextField(
                      controller: controller.panjangController,
                      decoration: InputDecoration(
                        hintText: "input lebar",
                        border: OutlineInputBorder(),
                      ),
                  ),)
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: controller.hitungLuas,
                    child: const Text("Luas"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: controller.hitungKeliling,
                    child: const Text("Keliling"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
              valueListenable: controller.state,
              builder: (context, value, _) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Center(
                    child: Text(
                      value.hasil.isEmpty ? "HASIL" : value.hasil,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.reset,
                child: const Text("RESET"),
              ),
            ), 
          ],
        )
      ),
    );
  }
}