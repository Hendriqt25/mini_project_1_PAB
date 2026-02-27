import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/order.dart';

class UpdateJastip extends StatefulWidget {
  final String id;
  const UpdateJastip({super.key, required this.id});

  @override
  State<UpdateJastip> createState() => _UpdateJastipState();
}

class _UpdateJastipState extends State<UpdateJastip> {
  late TextEditingController nama;
  late TextEditingController lokasi;
  late TextEditingController pemesan;
  late TextEditingController harga;

  @override
  void initState() {
    super.initState();
    final data = Provider.of<JastipProvider>(
      context,
      listen: false,
    ).findById(widget.id);

    nama = TextEditingController(text: data.namaBarang);
    lokasi = TextEditingController(text: data.lokasiBeli);
    pemesan = TextEditingController(text: data.namaPemesan);
    harga = TextEditingController(text: data.harga.toString());
  }

  @override
  void dispose() {
    nama.dispose();
    lokasi.dispose();
    pemesan.dispose();
    harga.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<JastipProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Jastip",
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
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 120,
              height: 42,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  provider.updateItem(
                    widget.id,
                    nama.text,
                    lokasi.text,
                    pemesan.text,
                    int.tryParse(harga.text) ?? 0,
                  );
                  Navigator.pop(context);
                },
                child: const Text(
                  "Update",
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
