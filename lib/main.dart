import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanMenu(),
    );
  }
}

class HalamanMenu extends StatelessWidget {
  const HalamanMenu({super.key});

  final List<String> menu = const [
    "Soto",
    "Rawon",
    "Bakso",
  ];

  final List<String> harga = const [
    "12.000",
    "20.000",
    "20.000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F7FF),
      appBar: AppBar(
        title: const Text(
          "Menu Makanan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF183B64),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFD6E9FF),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF8BBCEB).withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 7),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.restaurant_menu,
                size: 45,
                color: Color(0xFF4389CC),
              ),
              const SizedBox(height: 10),
              const Text(
                "Daftar Menu",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF183B64),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Pilihan makanan favoritmu!",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF64809D),
                ),
              ),
              const SizedBox(height: 22),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(45),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1.5),
                  },
                  border: TableBorder.all(
                    color: const Color(0xFFD5E6F7),
                    width: 1,
                  ),
                  children: [
                    const TableRow(
                      decoration: BoxDecoration(
                        color: Color(0xFF3679B9),
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "No",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Menu",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Harga",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (int i = 0; i < menu.length; i++)
                      TableRow(
                        decoration: BoxDecoration(
                          color:
                              i.isEven ? const Color(0xFFEAF4FF) : Colors.white,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Text(
                              "${i + 1}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF183B64),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.restaurant,
                                  size: 17,
                                  color: Color(0xFF4389CC),
                                ),
                                const SizedBox(width: 7),
                                Expanded(
                                  child: Text(
                                    menu[i],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF183B64),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14),
                            child: Text(
                              harga[i],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3679B9),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFD6E9FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Color(0xFF3679B9),
                      size: 18,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Selamat menikmati!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF183B64),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
