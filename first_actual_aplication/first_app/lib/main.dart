import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final description =
      'Atualmente tenho 20 anos, sou graduando em Desenvolvimento de Software Multiplataformas, trabalho na empresa Napp Solutions como frente de produto no segmento de catálogos de Farmácias, atuando em otimização de catálogos de indústrias. Uso tecnologias como Python, PostgreSQL, AppsScript, e no momento estou iniciando em um projeto que utiliza a linguagem Go, Javascript e de containers Docker.';
  final imageUrl =
      'https://ca.slack-edge.com/T1Q8S1AN8-U02EL82M5JM-709bcdb3ba80-512';
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About me'),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                accountName: const Text('Leandro Alves'),
                accountEmail:
                    const Text('leandro.augusto.alves@outlook.com.br'),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email Comercial'),
                subtitle: Text('leandro.augusto.alves@outlook.com.br'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Padding(padding: EdgeInsets.only(top: 24)),
          const Text(
            'Leandro Alves',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(),
              Text('Flutter Developer'),
            ],
          ),
          const Divider(
            indent: 32,
            endIndent: 32,
            height: 24,
            thickness: 3,
            color: Colors.amber,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              description,
              textAlign: TextAlign.justify,
            ),
          ),
          const Spacer(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Follow me'),
      ),
    );
  }
}
