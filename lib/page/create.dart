import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import '../models/order.dart';

class CreateJastip extends StatelessWidget {
  const CreateJastip({super.key});

  @override
  Widget build(BuildContext context) {
    final nama = TextEditingController();
    final lokasi = TextEditingController();
    final pemesan = TextEditingController();
    final harga = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TitipinAja",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nama,
              decoration: const InputDecoration(
                labelText: "Nama Barang",
                prefixIcon: Icon(Icons.shopping_bag),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: lokasi,
              decoration: const InputDecoration(
                labelText: "Lokasi",
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: pemesan,
              decoration: const InputDecoration(
                labelText: "Nama Pemesan",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: harga,
              decoration: const InputDecoration(
                labelText: "Harga",
                prefixIcon: Icon(Icons.attach_money),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  final namaText = nama.text.trim();
                  final lokasiText = lokasi.text.trim();
                  final pemesanText = pemesan.text.trim();
                  final hargaText = harga.text.trim();

                  if (namaText.isEmpty ||
                      lokasiText.isEmpty ||
                      pemesanText.isEmpty ||
                      hargaText.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Semua field wajib diisi"),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

                  final hargaValue = int.tryParse(hargaText);
                  if (hargaValue == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Harga harus berupa angka"),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }

                  Provider.of<JastipProvider>(
                    context,
                    listen: false,
                  ).addItem(namaText, lokasiText, pemesanText, hargaValue);

                  Navigator.pop(context);
                },
                child: const Text(
                  "Simpan",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
