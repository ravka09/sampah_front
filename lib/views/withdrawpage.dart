import 'package:flutter/material.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penarikan Uang'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.monetization_on,
            size: 100.0,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Jumlah Penarikan',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Jumlah',
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(350, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    0), // Mengatur sudut menjadi 0 untuk bentuk kotak
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Tarik',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}