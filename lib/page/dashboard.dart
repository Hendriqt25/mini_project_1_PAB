import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/order.dart';
import 'create.dart';
import 'update.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Jastip",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      body: Consumer<JastipProvider>(
        builder: (context, data, _) {
          if (data.items.isEmpty) {
            return const Center(child: Text("Belum ada Pesanan"));
          }

          return ListView.builder(
            itemCount: data.items.length,
            itemBuilder: (context, i) {
              final item = data.items[i];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  title: Text(item.namaBarang),
                  subtitle: Text(item.namaPemesan),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Rp ${item.harga}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          data.deleteItem(item.id);
                        },
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => UpdateJastip(id: item.id),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const CreateJastip()),
          );
        },
      ),
    );
  }
}
