import 'package:fl_components/Widgets/drawer_widget.dart';
import 'package:fl_components/theme/global_theme.dart';
import 'package:flutter/material.dart';

class TarjetaScreen extends StatelessWidget {
  const TarjetaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarjetas a 2x1')),
      endDrawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.photo_album,
                        color: primary,
                      ),
                      title: Text('Titulo de tarjeta'),
                      subtitle: Text(
                        'Commodo et nisi laborum officia ipsum nisi mollit duis proident ex. Minim commodo non proident pariatur elit velit pariatur ut aute in voluptate est. Qui fugiat ipsum sunt enim incididunt qui incididunt qui velit enim id deserunt magna magna. Irure est culpa laboris incididunt ipsum nulla cillum aliqua sit consectetur enim pariatur qui officia.',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {}, child: const Text('Boton 1')),
                        TextButton(
                            onPressed: () {}, child: const Text('Boton 2')),
                      ],
                    ),
                  ],
                ),
              ),
              //------------------------------------------------------------------------------------------------
              const SizedBox(
                width: 20,
                height: 20,
              ),

              Card(
                elevation: 5,
                child: Column(
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: FadeInImage(
                        placeholder: AssetImage('assets/hamood.gif'),
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1590005024862-6b67679a29fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=740&q=80'),
                      ),
                    ),
                    const ListTile(
                      title: Text('Aguacate de Michoacan'),
                      subtitle: Text(
                        'Y si te invito una copa y me acerco a tu boca, si te robo un besito aver te enojas conmigo',
                        style: TextStyle(fontSize: 18),
                      ),
                      trailing: Text("\$500"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {}, child: const Icon(Icons.add)),
                        TextButton(
                            onPressed: () {},
                            child: const Icon(Icons.favorite)),
                        TextButton(
                            onPressed: () {}, child: const Icon(Icons.share)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
