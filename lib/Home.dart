import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var fontColor = Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aula tads 23"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          height: 180,
          width: 330,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.pink[300]!,
                Colors.black,
                Colors.pink[300]!,
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 10,
                top: 15,
                child: ClipOval(
                  child: SizedBox(
                    width: 90,
                    height: 110,
                    child: Image.asset('images/gato.jpeg', fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Gato',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: fontColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Adotado',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: fontColor,
                      ),
                    ),
                    Text(
                      '7 Anos',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: fontColor,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone_callback, color: fontColor),
                        const SizedBox(width: 5),
                        Text(
                          '+55 11 998520 8649',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: fontColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(Icons.email, color: fontColor),
                        const SizedBox(width: 5),
                        Text(
                          'gato@miau.com',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: fontColor,
                          ),
                        ),
                      ],
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
