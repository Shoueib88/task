import 'package:flutter/material.dart';

void main() => runApp(const LoginApi());

class LoginApi extends StatelessWidget {
  const LoginApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 360,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color.fromARGB(255, 16, 66, 107), width: 2)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'UserName', prefixIcon: Icon(Icons.person)),
                )),
            const SizedBox(height: 10),
            Container(
                width: 360,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color.fromARGB(255, 16, 66, 107), width: 2)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'PassWord',
                      prefixIcon: Icon(Icons.password)),
                )),
            const SizedBox(height: 10),
            Container(
              color: const Color.fromARGB(255, 15, 67, 110),
              width: 120,
              child: TextButton(
                  onPressed: () {},
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
