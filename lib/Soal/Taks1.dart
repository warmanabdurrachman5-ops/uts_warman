import 'package:flutter/material.dart';

// void main() {
//   runApp(const ());
// }

class Taks1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Order',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 103, 0),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(34)),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Column(
                  children: [
                    // Ilustrasi makanan
                    Expanded(
                      flex: 6,
                      child: Center(
                        child: Image.network(
                          'https://storyset.com/illustration/online-shopping/pana',
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF2E2),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: const Icon(
                                Icons.lunch_dining,
                                size: 120,
                                color: Colors.deepOrange,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    // Judul
                    const Text(
                      'All your favorites',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF30313D),
                      ),
                    ),

                    const SizedBox(height: 14),

                    // Deskripsi
                    const Text(
                      'Get all your loved foods in one once place, '
                      'you just place the one we do the rest',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: Color(0xFF9296AA),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Indikator halaman
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == 0
                                ? const Color(0xFFFF7024)
                                : const Color(0xFFFFDFD0),
                          ),
                        ),
                      ),
                    ),

                    const Spacer(),

                    // Tombol NEXT
                    SizedBox(
                      width: double.infinity,
                      height: 53,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF7024),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 4),

                    // Skip
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9296AA),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
