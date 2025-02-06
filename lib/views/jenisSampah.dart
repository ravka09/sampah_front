import 'package:flutter/material.dart';

class WasteTypePage extends StatelessWidget {
  final List<Map<String, dynamic>> wasteTypes = [
    {'name': 'Organik', 'icon': Icons.eco, 'color': Colors.green},
    {'name': 'Anorganik', 'icon': Icons.layers, 'color': Colors.orange},
    {'name': 'Plastik', 'icon': Icons.water_damage, 'color': Colors.blue},
    {'name': 'Kertas', 'icon': Icons.book, 'color': Colors.brown},
    {'name': 'Logam', 'icon': Icons.invert_colors, 'color': Colors.grey},
    {'name': 'Kaca', 'icon': Icons.gesture, 'color': Colors.lightBlue},
    {'name': 'Elektronik', 'icon': Icons.phone_iphone, 'color': Colors.teal},
    {'name': 'Lainnya', 'iconK': Icons.more_horiz, 'color': Colors.black},
  ];

   WasteTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Jenis Sampah'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: wasteTypes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Implementasi logika pemilihan jenis sampah
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      wasteTypes[index]['icon'],
                      size: 40.0,
                      color: wasteTypes[index]['color'],
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      wasteTypes[index]['name'],
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}