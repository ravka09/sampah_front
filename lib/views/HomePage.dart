import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/views/RiwayatSetor.dart';
import 'package:myapp/views/JenisSampah.dart';
import 'package:myapp/views/SetorSampah.dart';
import 'package:myapp/views/profile.dart';
import 'package:myapp/views/Settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
            const Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Get.to(() => const Settings()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => const profile()),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          AssetImage("assets/images/logosampah.png"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Hey Ravka,", style: TextStyle(fontSize: 14)),
                      const Text("Welcome back!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Balance & Points with Icons
              Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      title: "Balance",
                      value: "Rp50.235",
                      color: Colors.green,
                      icon: Icons.account_balance_wallet, // Ikon dompet
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCard(
                      title: "Poin",
                      value: "5.137",
                      color: Colors.amber,
                      icon: Icons.monetization_on, // Ikon koin
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Operations
              const Text("Operations",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 12),
              _buildOperationsGrid(),

              const SizedBox(height: 20),

              // Withdrawal History
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Withdrawal Money History",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Icon(Icons.history, color: Colors.grey.shade600),
                ],
              ),
              const SizedBox(height: 12),
              _buildTransactionHistory(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget Card dengan Ikon
  Widget _buildCard(
      {required String title,
      required String value,
      required Color color,
      required IconData icon}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 32), // Ikon di kiri
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(color: Colors.white, fontSize: 14)),
              const SizedBox(height: 4),
              Text(value,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }

  // Grid of Operations
  Widget _buildOperationsGrid() {
    final List<Map<String, dynamic>> operations = [
      {
        "icon": Icons.card_giftcard,
        "label": "Redeem",
        "route": (context) => HomePage()
      },
      {
        "icon": Icons.recycling,
        "label": "Setor Sampah",
        "route": (context) => SetorSampah()
      },
      {
        "icon": Icons.list,
        "label": "Jenis Sampah",
        "route": (context) => JenisSampah()
      },
      {
        "icon": Icons.history,
        "label": "Riwayat",
        "route": (context) => RiwayatSetor()
      },
    ];

    return GridView.builder(
      itemCount: operations.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.to(() => operations[index]["route"](context)),
          // onTap: () => Get.to(() => print('klik')),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.blueAccent.shade100,
                child: Icon(operations[index]["icon"],
                    color: Colors.white, size: 28),
              ),
              const SizedBox(height: 6),
              Text(
                operations[index]["label"],
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }

  // Transaction History
  Widget _buildTransactionHistory() {
    final List<Map<String, dynamic>> transactions = [
      {
        "name": "Withdraw",
        "time": "Today 5:00AM",
        "amount": "Rp27.000",
        "image": "https://randomuser.me/api/portraits/women/1.jpg"
      },
      {
        "name": "Withdraw",
        "time": "Today 3:02PM",
        "amount": "Rp31.000",
        "image": "https://randomuser.me/api/portraits/men/2.jpg"
      },
    ];

    return Column(
      children: transactions.map((tx) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 24, backgroundImage: NetworkImage(tx["image"])),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx["name"], style: const TextStyle(fontSize: 14)),
                    Text(tx["time"],
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade600)),
                  ],
                ),
              ),
              Chip(
                label: Text(tx["amount"],
                    style: const TextStyle(color: Colors.white)),
                backgroundColor: Colors.green,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
