import 'package:flutter/material.dart';

class DepositHistoryPage extends StatelessWidget {
  const DepositHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Setor'),
      ),
      body: ListView.builder(
        itemCount: 5, // Ganti dengan jumlah riwayat setor yang sebenarnya
        itemBuilder: (context, index) {
          return const Card(
            elevation: 3, // Elevasi kartu
            margin: EdgeInsets.symmetric(
                horizontal: 10, vertical: 5), // Margin kartu
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Setor 1000'),
              subtitle: Text('12 Mar 2024'),
              trailing: Text('+1000'),
            ),
          );
        },
      ),
    );
  }
}