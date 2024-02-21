import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'lib/img/logo.png',
                  height: 200,
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              //title
              const Text(
                'Athletic Apparel and Footwear',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),

              //subtitle
              const Text(
                'We partner with the best in the industry to co-create. This way we offer our fans the sporting goods',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 78, 78, 78)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 48,
              ),

              //startnow button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
